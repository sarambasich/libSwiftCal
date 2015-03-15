//
//  RecurrenceRule.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 2/21/15.
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

/// The seconds unit of time (0 - 59 / 0 - 60)
public typealias Second = Int
/// The minute unit of time (0 - 59)
public typealias Minute = Int
/// The hour unit of time (0 - 23)
public typealias Hour = Int
/// An ordinal day of the month number (-31 - -1 / 1 - 31)
public typealias DayOfMonth = Int
/// An ordinal day of the year number (-366 - -1 / 1 - 366)
public typealias DayOfYear = Int
/// An ordinal week in a year (-53 - -1 / 1 - 53)
public typealias WeekOfYear = Int
/// An ordinal month in a year (1 - 12)
public typealias MonthOfYear = Int

/**
    Enumeration of the days of the week.

    "SU", "MO", "TU", "WE", "TH", "FR", "SA"
*/
public enum DayOfWeek: String {
    case Sunday = "SU"
    case Monday = "MO"
    case Tuesday = "TU"
    case Wednesday = "WE"
    case Thursday = "TH"
    case Friday = "FR"
    case Saturday = "SA"
    
    public func serializeToiCal() -> String {
        return self.rawValue
    }
    
    public func serializeToiCalForKey(key: String) -> String {
        return key + kEQUALS + self.serializeToiCal()
    }
}

/**
    Object representing a day of the week along with information about which
    day of the week and which one in a given set.

    An occurrence of `0` indicates no specified value.
*/
public class DayOfTheWeek: NSObject {
    public var dayOfWeek: DayOfWeek
    public var occurrence: Int?
    
    public init(dayOfWeek: DayOfWeek, occurrence: Int? = nil) {
        self.dayOfWeek = dayOfWeek
        self.occurrence = occurrence
    }
    
    public func serializeToiCal() -> String {
        var result = String()
        
        if let o = self.occurrence {
            result += "\(o)"
        }
        
        result += "\(self.dayOfWeek.rawValue)"
        
        return result
    }
    
    public func serializeToiCalForKey(key: String) -> String {
        return key + kEQUALS + self.serializeToiCal()
    }
}


/**
    A measure of how often an occurence should happen.

    "SECONDLY", "MINUTELY", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "YEARLY"
*/
public enum Frequency: String {
    case Secondly = "SECONDLY"
    case Minutely = "MINUTELY"
    case Hourly = "HOURLY"
    case Daily = "DAILY"
    case Weekly = "WEEKLY"
    case Monthly = "MONTHLY"
    case Yearly = "YEARLY"
    
    func serializeToiCal() -> String {
        return kFREQ + kEQUALS + self.rawValue
    }
}

/**
    Used to identify properties that contain a recurrence rule specification.

    https://tools.ietf.org/html/rfc5545#section-3.3.10
*/
public class RecurrenceRule: ReminderProperty {
    /// identifies the type of recurrence rule
    public var frequency: Frequency!
    /// Defines a date-time value which bounds the recurrence rule in an inclusive 
    /// manner. If the value specified by UNTIL is synchronized with the specified
    /// recurrence, this date or date-time becomes the last instance of the recurrence.
    public var until: NSDate!
    /// Defines the number of occurrences at which to range-bound the recurrence
    public var count: Int = 0
    
    /// The INTERVAL rule part contains a positive integer representing at
    /// which intervals the recurrence rule repeats.  The default value is
    /// "1", meaning every second for a SECONDLY rule, every minute for a
    /// MINUTELY rule, every hour for an HOURLY rule, every day for a
    /// DAILY rule, every week for a WEEKLY rule, every month for a
    /// MONTHLY rule, and every year for a YEARLY rule.  For example,
    /// within a DAILY rule, a value of "8" means every eight days.
    public var interval: Int = 0
    public var bySecond = [Second]()
    public var byMinute = [Minute]()
    public var byHour = [Hour]()
    public var byDay = [DayOfTheWeek]()
    public var byMonthDay = [DayOfMonth]()
    public var byYearDay = [DayOfYear]()
    public var byWeekNumber = [WeekOfYear]()
    public var byMonthNumber = [MonthOfYear]()
    
    public var bySetPosition = [Int]()
    public var weekStart: DayOfWeek = .Monday
    
    public required init() {
        super.init()
    }
    
    
    // MARK: iCalendarSerialiable
    public override func serializeToiCal() -> String {
        var result = String()
        
        if self.key.isEmpty {
            return result
        }
        
        result += kRRULE
        
        result += self.serializeParameters()
        
        result += kCOLON
        
        result += self.frequency.serializeToiCal()
        
        if let u = self.until {
            result += kSEMICOLON
            result += u.serializeToiCalForKey(kUNTIL)
        }
        
        if self.count > 0 {
            result += kSEMICOLON
            result += self.count.serializeToiCalForKey(kCOUNT)
        }
        
        if self.interval > 0 {
            result += kSEMICOLON
            result += self.interval.serializeToiCalForKey(kINTERVAL)
        }
        
        if self.bySecond.count > 0 {
            result += kSEMICOLON + kBYSECOND + kEQUALS
            var first = true
            for b in self.bySecond {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += b.serializeToiCal()
            }
        }

        if self.bySecond.count > 0 {
            result += kSEMICOLON + kBYSECOND + kEQUALS
            var first = true
            for b in self.bySecond {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += b.serializeToiCal()
            }
        }
        
        if self.byMinute.count > 0 {
            result += kSEMICOLON + kBYMINUTE + kEQUALS
            var first = true
            for m in self.byMinute {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += m.serializeToiCal()
            }
        }
        
        if self.byHour.count > 0 {
            result += kSEMICOLON + kBYHOUR + kEQUALS
            var first = true
            for h in self.byHour {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += h.serializeToiCal()
            }
        }
        
        if self.byDay.count > 0 {
            result += kSEMICOLON + kBYDAY + kEQUALS
            var first = true
            for b in self.byDay {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += b.serializeToiCal()
            }
        }
        
        if self.byMonthDay.count > 0 {
            result += kSEMICOLON + kBYMONTHDAY + kEQUALS
            var first = true
            for d in self.byMonthDay {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += d.serializeToiCal()
            }
        }
        
        if self.byYearDay.count > 0 {
            result += kSEMICOLON + kBYDAY + kEQUALS
            var first = true
            for d in self.byYearDay {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += d.serializeToiCal()
            }
        }
        
        if self.byWeekNumber.count > 0 {
            result += kSEMICOLON + kBYWEEKNO + kEQUALS
            var first = true
            for n in self.byWeekNumber {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += n.serializeToiCal()
            }
        }
        
        if self.byMonthNumber.count > 0 {
            result += kSEMICOLON + kBYMONTH + kEQUALS
            var first = true
            for b in self.byMonthNumber {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += b.serializeToiCal()
            }
        }
        
        if self.bySetPosition.count > 0 {
            result += kSEMICOLON + kBYSETPOS + kEQUALS
            var first = true
            for b in self.bySetPosition {
                if !first {
                    result += kCOMMA
                }
                
                first = false
                result += b.serializeToiCal()
            }
        }
        
        if self.weekStart != .Monday {
            result += kSEMICOLON + kWKST + kEQUALS + self.weekStart.rawValue
        }
        
        self.stringValue = result
        
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
        
        if let freqVal = dictionary[kFREQ] as? String {
            if let f = Frequency(rawValue: freqVal) {
                self.frequency = f
            }
        }
        
        if let byDayVals = dictionary[kBYDAY] as? [String] {
            for dayVal in byDayVals {
                var occurrence: Int? = nil
                var dayStr: String
                if dayVal.len > 2 {
                    let dayValIndex = advance(dayVal.endIndex, -2)
                    let intStr = dayVal.substringToIndex(dayValIndex)
                    let occurrence = intStr.toInt()
                    dayStr = dayVal.substringFromIndex(dayValIndex)
                } else {
                    dayStr = dayVal
                }
                
                if let day = DayOfWeek(rawValue: dayVal) {
                    let dotw = DayOfTheWeek(dayOfWeek: day, occurrence: occurrence)
                    self.byDay.append(dotw)
                }
            }
        }
        
        if let wkstVal = dictionary[kWKST] as? String {
            if let w = DayOfWeek(rawValue: wkstVal) {
                self.weekStart = w
            }
        }
    }
    
    public override func toDictionary() -> [String : AnyObject] {
        if self.key.isEmpty { return [:] }
        var result = super.toDictionary()
        
        result[kFREQ] = self.frequency.rawValue
        result[kWKST] = self.weekStart.rawValue
//        kBYDAY
        
        return result
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["", kUNTIL, kCOUNT, kINTERVAL, kBYSECOND,
                    kBYMINUTE, kBYHOUR, "", kBYMONTHDAY, kBYYEARDAY , kBYWEEKNO,
                    kBYMONTH, kBYSETPOS, ""]
        }
    }
}
