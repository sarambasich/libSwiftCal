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

import Foundation

/**
    DATE-TIME values for recurring events, to-dos, journal entries, or time zone
    definitions.
*/
public class RecurrenceDate: Property {
    /// The recurrence date
    public private(set) var date: NSDate!
    /// The recurrence date time
    public private(set) var dateTime: NSDate!
    /// The recurrence time period
    public private(set) var timePeriod: TimePeriod!
    
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
        
        if let perDict = dictionary[kPERIOD] as? [String : AnyObject] {
            let timePer = TimePeriod(dictionary: perDict)
            self.timePeriod = timePer
        }
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kDATE, kDATE_TIME, kPERIOD]
        }
    }
}
