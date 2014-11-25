//
//  Properties.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/19/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation
import EventKit

public protocol TypedValue {
    var intValue: Int? { get }
    var boolValue: Bool? { get }
    var doubleValue: Double? { get }
    var stringValue: String? { get }
    var dateValue: NSDate? { get }
}

public class Property: CalendarObject, TypedValue {
    public internal(set) var key: String!
    public internal(set) var propertyValue: AnyObject!
    public internal(set) var parameters = [Parameter]()
    
    override init() {
        super.init()
    }

    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override func toDictionary() -> [String : AnyObject] {
        return [key : propertyValue]
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [SerializationKeys.PropertyKeyKey, SerializationKeys.PropertyValKey, SerializationKeys.ParametersKey]
        }
    }
    
    
    // MARK: - TypedValue
    public var intValue: Int? {
        get {
            return propertyValue as? Int
        }
    }
    
    public var boolValue: Bool? {
        get {
            return propertyValue as? Bool
        }
    }
    
    public var doubleValue: Double? {
        get {
            return propertyValue as? Double
        }
    }
    
    public var stringValue: String? {
        get {
            return propertyValue as? String
        }
    }
    
    public var dateValue: NSDate? {
        get {
            return propertyValue as? NSDate
        }
    }
}


public class Attendee: Property {
    public var calAddress: NSURL? {
        get {
            if let v = self.propertyValue as? String {
                return NSURL(string: v)
            }
            
            return nil
        }
    }
}


public class CalendarProperty: Property {
    override init() {
        super.init()
    }
    
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [SerializationKeys.PropertyValKey, SerializationKeys.ParametersKey]
        }
    }
}


public class ReminderProperty: Property {
    
}


public class GenericProperty: Property {
    
}


public class IANAProperty: Property {
    
}


public class AlarmProperty: Property {
    
}


public class TriggerProperty: AlarmProperty {
    public internal(set) var offsetTrigger: NSTimeInterval!
    public internal(set) var absoluteTrigger: NSDate!
}


public class AudioAction: AlarmProperty {
    public internal(set) var attach: Attachment!
}


public class DisplayAction: AlarmProperty {
    public internal(set)var desc: String!
}


public class EmailAction: AlarmProperty {
    public internal(set) var desc: String!
    public internal(set) var summary: String!
    public internal(set) var attendees = [Attendee]()
    public internal(set) var attach = [Attachment]()
}