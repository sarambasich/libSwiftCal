//
//  Duration.swift
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
    Represents a duration in time.
*/
public class Duration: CalendarObject, FloatLiteralConvertible, Printable {
    public static let keyLetters: [Character] = ["W", "D", "H", "M", "S"]
    public static let otherCharacters: [Character] = ["P", "T", "+", "-"]
    
    public private(set) var weeks = 0
    public private(set) var days = 0
    
    public private(set) var hours: Hour = 0
    public private(set) var minutes: Minute = 0
    public private(set) var seconds: Second = 0
    
    public var negative: Bool {
        return weeks < 0 || days < 0 || hours < 0 || minutes < 0 || seconds < 0
    }

    public var timeInterval: NSTimeInterval {
        var sumArr = [NSTimeInterval]()
        sumArr.append(Conversions.Time.SecondsInAWeek * NSTimeInterval(self.weeks))
        sumArr.append(Conversions.Time.SecondsInADay * NSTimeInterval(self.days))
        sumArr.append(Conversions.Time.SecondsInAnHour * NSTimeInterval(self.hours))
        sumArr.append(Conversions.Time.SecondsInAMinute * NSTimeInterval(self.minutes))
        sumArr.append(NSTimeInterval(self.seconds))
        return sumArr.reduce(0.0, combine: { $0 + $1 })
    }
    
    public required init() {
        super.init()
    }
    
    public convenience init(string: String) {
        var dictionary = [String : AnyObject]()
        
        var period = string.uppercaseString
        var negative = period.contains("-", options: .CaseInsensitiveSearch)
        
        period = period.stringByReplacingOccurrencesOfString(String("+"), withString: "")
        period = period.stringByReplacingOccurrencesOfString(String("-"), withString: "")
        period = period.stringByReplacingOccurrencesOfString(String("P"), withString: "")
        
        var periods = period.componentsSeparatedByString("T")
        var date = periods.first!
        var time: String?
        if periods.count == 2 {
            time = periods.last!
        }
        
        var curDateStartIdx = date.endIndex
        var curDateEndIdx = date.endIndex
        
        for var i = date.len - 1; i >= 0; i-- {
            var char = date[advance(date.startIndex, i)]
            if contains(Duration.keyLetters, char) {
                let intStr = date.substringWithRange(Range(start: curDateStartIdx, end: curDateEndIdx))
                let scanner = NSScanner(string: intStr)
                var int = Int.max
                if scanner.scanInteger(&int) {
                    if int != Int.max {
                        dictionary[String(char)] = negative ? -int : int
                    }
                }
                
                curDateStartIdx = advance(curDateStartIdx, -1)
                curDateEndIdx = curDateStartIdx
            } else {
                curDateStartIdx = advance(curDateStartIdx, -1)
            }
        }
        
        if let time = time {
            var curTimeStartIdx = time.startIndex
            var curTimeEndIdx = curTimeStartIdx
            
            for i in 0 ..< time.len {
                var char = time[advance(time.startIndex, i)]
                if contains(Duration.keyLetters, char) {
                    let intStr = time.substringWithRange(Range(start: curTimeStartIdx, end: curTimeEndIdx))
                    let scanner = NSScanner(string: intStr)
                    var int: Int = -1
                    if scanner.scanInteger(&int) {
                        if int != -1 {
                            dictionary[String(char)] = negative ? -int : int
                        }
                    }
                    
                    if i < time.len {
                        curTimeStartIdx = advance(time.startIndex, i + 1)
                        curTimeEndIdx = curTimeStartIdx
                    }
                } else {
                    curTimeEndIdx = advance(curTimeEndIdx, 1)
                }
            }
        }
        
        self.init(dictionary: dictionary)
    }
    
    
    // MARK: - FloatLiteralConvertible
    public required init(floatLiteral value: FloatLiteralType) {
        super.init()
        
        var negative = value < 0
        var curValue = value
        let weekVal = Int(curValue / NSTimeInterval(Conversions.Time.SecondsInAWeek))
        self.weeks = weekVal
        curValue -= Conversions.Time.SecondsInAWeek * NSTimeInterval(weekVal)
        let dayVal = Int(curValue / NSTimeInterval(Conversions.Time.SecondsInADay))
        self.days = dayVal
        curValue -= Conversions.Time.SecondsInADay * NSTimeInterval(dayVal)
        let hourVal = Int(curValue / NSTimeInterval(Conversions.Time.SecondsInAnHour))
        self.hours = hourVal
        curValue -= Conversions.Time.SecondsInAnHour * NSTimeInterval(hourVal)
        let minVal = Int(curValue / NSTimeInterval(Conversions.Time.SecondsInAMinute))
        self.minutes = minVal
        curValue -= Conversions.Time.SecondsInAMinute * NSTimeInterval(minVal)
        self.seconds = Int(curValue)
    }
    
    
    // MARK: - iCalendarSerializable
    public override func serializeToiCal() -> String {
        return self.description
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Printable
    public override var description: String {
        var durationString = (self.negative ? "-" : "") + "P"
        
        let w = abs(self.weeks)
        if w > 0 {
            durationString += "\(w)W"
        }
        
        let d = abs(self.days)
        if d > 0 {
            durationString += "\(d)D"
        }
        
        var hasTime = false
        let addTime = { () -> Void in
            if !hasTime {
                hasTime = true
                durationString += "T"
            }
        }
        
        let h = abs(self.hours)
        if h > 0 {
            addTime()
            durationString += "\(h)H"
        }
        
        let m = abs(self.minutes)
        if m > 0 {
            addTime()
            durationString += "\(m)M"
        }
        
        let s = abs(self.seconds)
        if s > 0 {
            addTime()
            durationString += "\(s)S"
        }

        return durationString
    }
    
    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        return super.serializationKeys + ["W", "D", "H", "M", "S"]
    }
}
