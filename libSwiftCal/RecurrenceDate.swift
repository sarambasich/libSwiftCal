//
//  RecurrenceDate.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 10/15/14.
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

//func model__serializeRdates(rdates: [RecurrenceDate]) -> String {
//    var result = ""
//    
//    result += kRDATE
//    
//    var didParams = false // Okay, so this logic here is a bit janky. Sorry.
//    
//    for r in rdates {
//        if r.parameters.count > 0 && !didParams { // This is saying that only the first reminder's parameters get saved, so that applies for all in the array.
//            result += kSEMICOLON
//            didParams = true
//            for p in r.parameters {
//                result += p.serializeToiCal()
//            }
//        }
//        
//        if r === rdates.first { result += kCOLON } // 😕
//        else { result += kCOMMA }
//        
//        var date: NSDate?
//        var dateFormat = DateFormats.ISO8601UTC
//        
//        if let d = r.dateTime {
//            date = d
//        } else if let d = r.date {
//            dateFormat = DateFormats.ISO8601Date
//            date = d
//        }
//        
//        if let d = date {
//            result += d.toString(dateFormat: dateFormat)
//        } else if let p = r.timePeriod {
//            result += p.serializeToiCal()
//        } else {
//            fatalError("Invalid date or time period")
//        }
//    }
//    
//    result += kCRLF
//    
//    return result
//}

/**
    DATE-TIME values for recurring events, to-dos, journal entries, or time zone
    definitions.
*/
public class RecurrenceDate: Property {
    /// The recurrence date
    public private(set) var date = [NSDate]()
    /// The recurrence date time
    public private(set) var dateTime = [NSDate]()
    /// The recurrence time period
    public private(set) var timePeriod = [TimePeriod]()
    
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
        
        if let timePers = dictionary[kPERIOD] as? [[String : AnyObject]] {
            for t in timePers {
                let timePer = TimePeriod(dictionary: t)
                self.timePeriod.append(timePer)
            }
        }
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kDATE, kDATE_TIME, kPERIOD]
        }
    }
    
    public override func serializeToiCal() -> String {
        var result = String(kRDATE)
        
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
        } else if self.timePeriod.count > 0 {
            for p in self.timePeriod {
                if p !== self.timePeriod.first { result += kCOMMA }
                
                result += p.serializeToiCal()
            }
        }
        
        result.foldiCalendarString()
        
        result += kCRLF
        
        return result
    }
}
