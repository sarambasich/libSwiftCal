//
//  RecurrenceRule.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 2/21/15.
//  Copyright (c) 2015 Stefan Arambasich. All rights reserved.
//

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
}

/**
    Structure representing a day of the week along with information about which
    day of the week and which one in a given set.

    An occurrence of `0` indicates no specified value.
*/
public struct DayOfTheWeek {
    public var dayOfWeek: DayOfWeek
    public var occurrence: Int?
    
    public init(dayOfWeek: DayOfWeek, occurrence: Int? = nil) {
        self.dayOfWeek = dayOfWeek
        self.occurrence = occurrence
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
}

/**
    Used to identify properties that contain a recurrence rule specification.

    https://tools.ietf.org/html/rfc5545#section-3.3.10
*/
public class RecurrenceRule: ReminderProperty {
    /// identifies the type of recurrence rule
    public private(set) var frequency: Frequency!
    /// Defines a date-time value which bounds the recurrence rule in an inclusive 
    /// manner. If the value specified by UNTIL is synchronized with the specified
    /// recurrence, this date or date-time becomes the last instance of the recurrence.
    public private(set) var until: NSDate!
    /// Defines the number of occurrences at which to range-bound the recurrence
    public private(set) var count: Int = 0
    
    ///
    public private(set) var interval: Int = 0
    public private(set) var bySecond = [Second]()
    public private(set) var byMinute = [Minute]()
    public private(set) var byHour = [Hour]()
    public private(set) var byDay = [DayOfTheWeek]()
    public private(set) var byMonthDay = [DayOfMonth]()
    public private(set) var byYearDay = [DayOfYear]()
    public private(set) var byWeekNumber = [WeekOfYear]()
    public private(set) var byMonthNumber = [MonthOfYear]()
    
    public private(set) var bySetPosition = [Int]()
    public private(set) var weekStart: DayOfWeek = .Monday
    
    public required init() {
        super.init()
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
