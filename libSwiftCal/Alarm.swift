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

/**
    Defines a VALARM calendar component.

    This object describes an alarm that is part of a VTODO or VEVENT
    component. An alarm contains a trigger and an action to be
    performed upon trigger.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.6.6
*/
public class Alarm: CalendarObject {
    /// The parent reminder object
    public private(set) weak var reminder: Reminder?
    
    /// The action to perform upon the alarm's trigger
    public private(set) var action: AlarmProperty! = AlarmProperty()
    /// The alarm's trigger either set as a duration from start or an absolute date time
    public private(set) var trigger: Trigger! = Trigger()
    /// A duration of time in between repeated triggering of the alarm
    public private(set) var duration: AlarmProperty! = AlarmProperty()
    /// A description of the alarm
    public private(set) var desc: AlarmProperty! = AlarmProperty()
    /// Summary for use in email action
    public private(set) var summary: AlarmProperty! = AlarmProperty()
    /// Attendees for use in email action
    public private(set) var attendees = [Attendee]()
    /// An integer representing the number of times to repeat the alarm after its initial trigger
    public private(set) var repeat: AlarmProperty! = AlarmProperty()
    /// Non-standard "X-" properties
    public private(set) var xProperties = [GenericProperty]()
    /// IANA-registered property names
    public private(set) var IANAProperties = [IANAProperty]()
    
    public required init() {
        super.init()
    }
    
    
    // MARK: - Hashable
    public override var hashValue: Int {
        get {
            return (31 &* action.hash) &+ trigger.hash
        }
    }
    
    
    // MARK: - CalendarType
    public override func serializeToiCal() -> String {
        var result = String()
        
        result += kBEGIN + kCOLON + kVALARM + kCRLF
        
        result += model__serializeiCalChildren(self)
        
        result += kEND + kCOLON + kVALARM + kCRLF
        
        return result
    }
    
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        nscoder__initWithCoder(aDecoder, mirror: reflect(self), onObject: self)
    }

    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["", kACTION, kTRIGGER, kDURATION, kDESCRIPTION, kSUMMARY,
                SerializationKeys.AttendeesKey, kREPEAT, SerializationKeys.XPropertiesKey,
                SerializationKeys.IANAPropertiesKey]
        }
    }
}