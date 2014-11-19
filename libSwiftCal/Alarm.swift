//
//  Alarm.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/23/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation
import EventKit

public func == (lhs: Alarm, rhs: Alarm) -> Bool {
    return lhs === rhs || lhs.id == rhs.id
}

public func != (lhs: Alarm, rhs: Alarm) -> Bool {
    return !(lhs == rhs)
}

public class Alarm: CalendarObject {
    weak var reminder: Reminder?
    
    var action: AlarmProperty
    var trigger: TriggerProperty
    var duration: Duration?
    var repeat: Int?
    var xProperties: [GenericProperty]?
    var IANAProperties: [IANAProperty]?
    
    
    // MARK: - Hashable
    public override var hashValue: Int {
        get {
            return (31 &* action.hash) &+ trigger.hash
        }
    }
    
    
    // MARK: - iCal type
    public required init(data: NSData) {
        self.reminder = Reminder()
        self.action = AlarmProperty()
        self.trigger = TriggerProperty()
        
        super.init()
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        self.reminder = Reminder()
        self.action = AlarmProperty()
        self.trigger = TriggerProperty()
        
        super.init(coder: aDecoder)
        
        nscoder__initWithCoder(aDecoder, mirror: reflect(self), onObject: self)
    }

    public required init(dictionary: [String : AnyObject]) {
        self.reminder = Reminder()
        self.action = AlarmProperty()
        self.trigger = TriggerProperty()
        
        super.init(dictionary: dictionary)
    }
}