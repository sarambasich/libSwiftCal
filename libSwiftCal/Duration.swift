//
//  Duration.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 2/21/15.
//  Copyright (c) 2015 Stefan Arambasich. All rights reserved.
//

/**
    Represents a duration in time.
*/
public class Duration: CalendarObject, FloatLiteralConvertible {
    var weeks = 0
    var days = 0
    
    var hours: Hour = 0
    var minutes: Minute = 0
    var seconds: Second = 0

    public var timeInterval: NSTimeInterval {
        get {
            var sumArr = [NSTimeInterval]()
            sumArr.append(Conversions.Time.SecondsInAWeek * NSTimeInterval(self.weeks))
            sumArr.append(Conversions.Time.SecondsInADay * NSTimeInterval(self.days))
            sumArr.append(Conversions.Time.SecondsInAnHour * NSTimeInterval(self.hours))
            sumArr.append(Conversions.Time.SecondsInAMinute * NSTimeInterval(self.minutes))
            sumArr.append(NSTimeInterval(self.seconds))
            return sumArr.reduce(0.0, combine: { $0 + $1 })
        }
    }
    
    public required init() {
        super.init()
    }
    
    
    // MARK: - FloatLiteralConvertible
    public required init(floatLiteral value: FloatLiteralType) {
        super.init()
        
        var value = value
        let weekVal = Int(value / NSTimeInterval(Conversions.Time.SecondsInAWeek))
        self.weeks = weekVal
        value -= Conversions.Time.SecondsInAWeek * NSTimeInterval(weekVal)
        let dayVal = Int(value / NSTimeInterval(Conversions.Time.SecondsInADay))
        self.days = dayVal
        value -= Conversions.Time.SecondsInADay * NSTimeInterval(dayVal)
        let hourVal = Int(value / NSTimeInterval(Conversions.Time.SecondsInAnHour))
        self.hours = hourVal
        value -= Conversions.Time.SecondsInAnHour * NSTimeInterval(hourVal)
        let minVal = Int(value / NSTimeInterval(Conversions.Time.SecondsInAMinute))
        self.minutes = minVal
        value -= Conversions.Time.SecondsInAMinute * NSTimeInterval(minVal)
        self.seconds = Int(value)
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
            return super.serializationKeys + ["W", "D", "H", "M", "S"]
        }
    }
}
