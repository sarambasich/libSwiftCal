//
//  Extensions.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/23/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

public typealias Duration = NSTimeInterval

public typealias IANAPropertyValue = String
public typealias GenericPropertyValue = String

public typealias CalAddress = NSURL

import Foundation
import CoreLocation

// MARK: - Override to support adding dictionaries
/**
    Operator overloads for appending dictionaries. Warning, if key collisons in A and B,
    the method will prefer B's value.
*/
func +=(a: [String : AnyObject], b: [String : AnyObject]?) -> [String : AnyObject] {
    if b == nil {
        return a
    }
    
    return combineDicts(a, b!)
}

func + (a: [String : AnyObject], b: [String : AnyObject]?) -> [String : AnyObject] {
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
let DateFormats = ["YYYYMMDD'T'HHmmssZ", "YYYYMMDD'T'HHmmss", "YYYYMMDD", "YYYYMMDD'T'HHmmss'Z'"]
public extension NSDate {
    public class func parseDate(string: String, format: String? = nil) -> NSDate? {
        let formatter = NSDateFormatter()
        formatter.dateFormat = DateFormats.first
        
        formatter.locale = NSLocale.currentLocale()
        
        let date = formatter.dateFromString(string)
        return date?
    }
    
    public func stripTime() -> NSDate {
        let cal = NSCalendar()
        let flags: NSCalendarUnit = .YearCalendarUnit | .MonthCalendarUnit | .DayCalendarUnit
        let comps = cal.components(flags, fromDate: self)
        
        return cal.dateFromComponents(comps)!
    }
    
    public func toString(format: String? = nil) -> String {
        let df = NSDateFormatter()
        df.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        df.dateFormat = format ?? DateFormats.last
        return df.stringFromDate(self)
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
    
    internal func URLEncode() -> String? {
        let charSet = NSCharacterSet.URLQueryAllowedCharacterSet()
        return self.stringByAddingPercentEncodingWithAllowedCharacters(charSet)?
    }
}