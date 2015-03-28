//
//  Extensions.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/23/14.
//  
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
import CoreLocation

// MARK: - Override to support adding dictionaries
/**
    Operator overloads for appending dictionaries. Warning, if key collisons in A and B,
    the method will prefer B's value.
*/
public func += (a: [String : AnyObject], b: [String : AnyObject]?) -> [String : AnyObject] {
    if b == nil {
        return a
    }
    
    return combineDicts(a, b!)
}

public func + (a: [String : AnyObject], b: [String : AnyObject]?) -> [String : AnyObject] {
    if b == nil {
        return a
    }
    
    return combineDicts(a, b!)
}

private func combineDicts(a: [String : AnyObject], b: [String : AnyObject]) -> [String : AnyObject] {
    var result = [String : AnyObject]()
    for i in 0 ..< a.count {
        let ak = a.keys.array[i]
        let av = a.values.array[i] as NSObject
        
        result[ak] = av
    }
    
    for i in 0 ..< b.count {
        let bk = b.keys.array[i]
        let bv = b.values.array[i] as NSObject
        
        result[bk] = bv
    }
    
    return result
}


// MARK: - Override for the Python % operator (but I don't think this works :( )
func %(format: String, args: [CVarArgType]) -> String {
    return NSString(format: format, arguments: getVaList(args))
}


// MARK: - Wrapper for weak types in collections
public class Weak<T: AnyObject> {
    weak var value: T?
}


// MARK: - NSDate extension
public struct DateFormats {
    public static let ISO8601Full = "yyyyLLdd'T'HHmmssZ"
    public static let ISO8601UTC = "yyyyLLdd'T'HHmmss'Z'"
    public static let ISO8601FullNoZ = "yyyyLLdd'T'HHmmss"
    public static let ISO8601Date = "yyyyLLdd"
}

public extension NSDate {
    public class func parseDate(string: String, format: String = DateFormats.ISO8601Full) -> NSDate? {
        let formatter = NSDateFormatter()
        formatter.dateFormat = format
        
        formatter.locale = NSLocale.currentLocale()
        
        let date = formatter.dateFromString(string)
        return date?
    }
    
    public func stripTime() -> NSDate {
        let cal = NSCalendar.currentCalendar()
        let flags: NSCalendarUnit = .YearCalendarUnit | .MonthCalendarUnit | .DayCalendarUnit
        let comps = cal.components(flags, fromDate: self)
        
        return cal.dateFromComponents(comps)!
    }
    
    public func toString(dateFormat: String = DateFormats.ISO8601UTC, timezone: NSTimeZone = NSTimeZone.localTimeZone()) -> String {
        let df = NSDateFormatter()
        
        df.locale = NSLocale.currentLocale()
        df.timeZone = timezone
        df.dateFormat = dateFormat
        
        return df.stringFromDate(self)
    }
    
    public func toString(dateStyle: NSDateFormatterStyle, dateOnly: Bool = false, timeOnly: Bool = false) -> String {
        assert(!(dateOnly && timeOnly), "Can't have it both ways jack. Pick date or time.")
        
        let df = NSDateFormatter()
        
        df.locale = NSLocale.currentLocale()
        if !timeOnly { df.dateStyle = dateStyle }
        if !dateOnly { df.timeStyle = dateStyle }
        
        return df.stringFromDate(self)
    }
    
    public func valueForCalendarComponentUnit(unit: NSCalendarUnit) -> Int {
        return NSCalendar.currentCalendar().component(unit, fromDate: self)
    }
    
    public func hasTimeComponent() -> Bool {
        let seconds = self.valueForCalendarComponentUnit(NSCalendarUnit.SecondCalendarUnit) == 0
        let minutes = self.valueForCalendarComponentUnit(NSCalendarUnit.MinuteCalendarUnit) == 0
        let hours = self.valueForCalendarComponentUnit(NSCalendarUnit.HourCalendarUnit) == 0
        
        return seconds && minutes && hours
    }
}


// MARK: - CLLocationCoordinate2D extension
extension CLLocationCoordinate2D {
    func isEmpty() -> Bool {
        return self.latitude == 0.0 && self.longitude == 0.0
    }
}


// MARK: - NSData extension
extension NSData {
    func isEmpty() -> Bool {
        return self.length == 0
    }
}


// MARK: - String extension
public extension String {
    /// The empty string. Has no characters and is length 0.
    public static var Empty: String {
        return ""
    }
    
    internal func substring(startIndex: Int, endIndex: Int) -> String {
        return self.substringWithRange(Range(start: advance(self.startIndex, startIndex), end: advance(self.startIndex, endIndex)))
    }
    
    internal func substring(startIndex: Int, len: Int) -> String {
        return self.substringWithRange(Range(start: advance(self.startIndex, startIndex), end: advance(self.startIndex, startIndex + len)))
    }
    
    public var len: Int {
        get {
            return countElements(self) as Int
        }
    }
    
    public func URLEncode() -> String? {
        let charSet = NSCharacterSet.URLQueryAllowedCharacterSet()
        return self.stringByAddingPercentEncodingWithAllowedCharacters(charSet)?
    }
    
    public func replace(source: String, replacement: String) -> String {
        return self.stringByReplacingOccurrencesOfString(source, withString: replacement)
    }
    
    public func contains(otherString: String, options: NSStringCompareOptions = nil) -> Bool {
        return self.rangeOfString(otherString, options: options) != nil
    }
    
    /**
        Inserts a given string into the receiver every `n` characters. For example,
        on the string `Mississippi`, calling this function with `;`, `3`, and `true` yields:
    
        `;Mis;sis;sip;pi`
    
        :param: char The character to
    */
    public func insertString(str: String, everyXCharacters n: Int, indexZero: Bool = false) -> String {
        var result = self
        
        var curIdx = 0
        
        var strIdx = 0
        if !indexZero {
            strIdx++
            curIdx++
        }
        
        while strIdx < self.len {
            if strIdx % n == 0 {
                result = result.insertString(str, atIndex: curIdx)
                curIdx += str.len;
            }
            
            strIdx++
            curIdx++
            
        }
        
        return result
    }
    
    public func insertString(str: String, atIndex index: Int) -> String {
        let sub1 = self.substringToIndex(advance(self.startIndex, index))
        let sub2 = self.substringFromIndex(advance(self.startIndex, index))
        
        return sub1 + str + sub2
    }
    
    public func unfoldiCalendarString() -> String {
        var result = NSMutableString(string: self)
        
        var err: NSError?
        let regex = NSRegularExpression(pattern: "\\r\\n\\s", options: nil, error: &err)
        let rg = NSMakeRange(0, result.length)
        regex?.replaceMatchesInString(result, options: nil, range: rg, withTemplate: "")
        
        return result
    }
    
    public func foldiCalendarString() -> String {
        var result = self
        if result.len > 73 {
            result = result.insertString(kCRLF + " ", everyXCharacters: 73)
        }
        
        return result
    }
    
    public func escapeForiCalendar() -> String {
        var result = self.replace("\\", replacement: "\\\\")
        result = result.replace(",", replacement: "\\,")
        result = result.replace(";", replacement: "\\;")
        return result
    }
    
    public func removeiCalendarEscapes() -> String {
        var result = self.replace("\\\\", replacement: "\\")
        result = result.replace("\\,", replacement: ",")
        result = result.replace("\\;", replacement: ";")
        return result
    }
}


extension NSDate: iCalendarSerializable {
    public func serializeToiCal() -> String {
        return self.toString()
    }
    
    public func serializeToiCalForKey(key: String) -> String {
        return key + kEQUALS + self.serializeToiCal()
    }
}


extension Int { //: iCalendarKeySerializable
    public func serializeToiCal() -> String {
        return "\(self)"
    }
    
    public func serializeToiCalForKey(key: String) -> String {
        return key + kEQUALS + self.serializeToiCal()
    }
}


