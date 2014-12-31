//
//  Constants.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 12/28/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

/**
    Constant values used in various places throughout the app.
*/
public struct Constants {
    /// The gregorian calendar identifier as an upper case string.
    public static let CalScaleGregorian = "GREGORIAN"
    /// The version of iCalendar this framework is compatible with.
    public static let iCalendarVersion = "2.0"
    /// The unique identifier for libSwiftCal's `prodID` value.
    public static let libSwiftCalProdID = "-//com//sarambasich//libSwiftCal//0.1a//EN"
}

/**
    Common set of mathematical or scientific conversions involving
    specific units of measurement.
*/
public struct Conversions {
    /**
        Aids in the conversion of time from seconds into other units. Contains several
        "SecondsInA[X]" public constants.
    */
    public struct Time {
        public static let SecondsInAMinute: NSTimeInterval = 60.0
        public static let SecondsInAnHour: NSTimeInterval = 3600.0
        public static let SecondsInADay: NSTimeInterval = 86400.0
        public static let SecondsInAWeek: NSTimeInterval = (SecondsInADay * 7)
        public static let SecondsInAMonth: NSTimeInterval = (SecondsInADay * 30) // 1 month == 30 days
    }
}