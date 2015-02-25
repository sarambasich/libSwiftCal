//
//  Constants.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 12/28/14.
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
        public static let SecondsInAnHour: NSTimeInterval = 60 * SecondsInAMinute
        public static let SecondsInADay: NSTimeInterval = 24 * SecondsInAnHour
        public static let SecondsInAWeek: NSTimeInterval = 7 * SecondsInADay
        public static let SecondsInAMonth: NSTimeInterval = 30 * SecondsInADay // 1 month == 30 days
    }
}