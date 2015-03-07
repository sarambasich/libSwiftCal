//
//  TimePeriod.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 2/21/15.
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
    Represents a period of time.
*/
public class TimePeriod: CalendarObject {
    /// The beginning of the time period. If nil, means now and onward
    public private(set) var start: NSDate! {
        didSet {
            self.calculateTimePeriod()
        }
    }
    /// The end of the time interval (if nil, use a reminder's context to infer full info)
    public private(set) var end: NSDate! {
        didSet {
            self.calculateTimePeriod()
        }
    }
    /// A duration of time representin the size of the time period. Auto calculated if 
    /// start and end are populated
    public private(set) var duration: NSTimeInterval!
    
    public struct SerializationKeys {
        public static let Start = "start"
        public static let End = "end"
        public static let Duration = kDURATION
        
        public static let Hours = "H"
        public static let Weeks = "W"
        public static let Minutes = "M"
        public static let Days = "D"
        public static let Seconds = "S"
    }
    
    public required init() {
        super.init()
    }
    
    /**
        Calculates the duration between the start and end date, assigning the result to `self.duration`.
    */
    private func calculateTimePeriod() {
        if self.start != nil && self.end != nil {
            self.duration = self.end.timeIntervalSinceDate(self.start)
        }
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
        
        var curInterval: NSTimeInterval = 0.0
        let ks = SerializationKeys.self
        if let weeks = dictionary[ks.Weeks] as? Int {
            curInterval = curInterval + (NSTimeInterval(weeks) * Conversions.Time.SecondsInAWeek)
        }
        
        if let days = dictionary[ks.Days] as? Int {
            curInterval = curInterval + (NSTimeInterval(days) * Conversions.Time.SecondsInADay)
        }
        
        if let hours = dictionary[ks.Hours] as? Int {
            curInterval = curInterval + (NSTimeInterval(hours) * Conversions.Time.SecondsInAnHour)
        }
        
        if let minutes = dictionary[ks.Minutes] as? Int {
            curInterval = curInterval + (NSTimeInterval(minutes) * Conversions.Time.SecondsInAMinute)
        }
        
        if let seconds = dictionary[ks.Seconds] as? Int {
            curInterval = curInterval + NSTimeInterval(seconds)
        }
        
        self.duration = curInterval
    }
    
    public override var serializationKeys: [String] {
        get {
            let ks = SerializationKeys.self
            return super.serializationKeys + [ks.Start, ks.End, ks.Duration]
        }
    }
}
