//
//  ExceptionDate.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 2/25/15.
//
//  Copyright (c) 2015 Stefan Arambasich. All rights reserved.
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

/**
    DATE-TIME exception for recurring events, to-dos, journal entries, or time zone definitions.
*/
public class ExceptionDate: ReminderProperty {
    /// The value of the date to exclude
    var date = [NSDate]()
    /// The value of the datetime to exclude
    var dateTime = [NSDate]()
    
    /// The preferred means of accessing the date array elements
    public var value: [NSDate] {
        get {
            if self.date.count > 0 {
                return self.date
            }
            
            return self.dateTime
        } set {
            if self.date.count > 0 {
                self.date = newValue
            } else {
                self.dateTime = newValue
            }
        }
    }
    
    public required init() {
        super.init()
    }
    
    private func isEmpty() -> Bool {
        return self.key == nil || self.value.count == 0
    }
    
    
    // MARK: - iCalendarSerializable
    public override func serializeToiCal() -> String {
        if self.isEmpty() { return String.Empty }
        var result = String(kEXDATE)
        
        if self.parameters.count > 0 {
            result += kSEMICOLON
            result += self.serializeParameters()
        }
        
        result += kCOLON
        
        if self.date.count > 0 {
            for d in self.date {
                if d !== self.date.first { result += kCOMMA }
                
                result += d.toString(dateFormat: DateFormats.ISO8601Date)
            }
        } else if self.dateTime.count > 0 {
            for d in self.dateTime {
                if d !== self.dateTime.first { result += kCOMMA }
                
                result += d.toString(timezone: NSTimeZone(forSecondsFromGMT: 0))
            }
        }
        
        result.foldiCalendarString()
        
        result += kCRLF
        
        return result
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kDATE, kDATE_TIME]
        }
    }
}
