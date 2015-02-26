//
//  ExceptionDate.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 2/25/15.
//  Copyright (c) 2015 Stefan Arambasich. All rights reserved.
//

/**
    DATE-TIME exception for recurring events, to-dos, journal entries, or time zone definitions.
*/
public class ExceptionDate: ReminderProperty {
    /// The value of the date to exclude
    public private(set) var date: NSDate!
    /// The value of the datetime to exclude
    public private(set) var dateTime: NSDate!
    
    public required init() {
        super.init()
    }
    
    
    // MARK: - NSCoder
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
