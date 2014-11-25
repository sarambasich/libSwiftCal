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
    public private(set) weak var reminder: Reminder?
    
    public private(set) var action: AlarmProperty!
    public private(set) var trigger: Trigger!
    public private(set) var duration: Duration!
    public private(set) var repeat = 0
    public private(set) var xProperties = [GenericProperty]()
    public private(set) var IANAProperties = [IANAProperty]()
    
    
    // MARK: - Hashable
    public override var hashValue: Int {
        get {
            return (31 &* action.hash) &+ trigger.hash
        }
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
            return super.serializationKeys + ["", kACTION, kTRIGGER, kDURATION, kREPEAT, SerializationKeys.XPropertiesKey, SerializationKeys.IANAPropertiesKey]
        }
    }
}