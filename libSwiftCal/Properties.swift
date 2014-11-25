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
    var intValue: Int? { get set }
    var boolValue: Bool? { get set }
    var doubleValue: Double? { get set }
    var stringValue: String? { get set }
    var dateValue: NSDate? { get set }
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
        } set {
            self.propertyValue = newValue as Int!
        }
    }
    
    public var boolValue: Bool? {
        get {
            return propertyValue as? Bool
        } set {
            self.propertyValue = newValue as Bool!
        }
    }
    
    public var doubleValue: Double? {
        get {
            return propertyValue as? Double
        } set {
            self.propertyValue = newValue as Double!
        }
    }
    
    public var stringValue: String? {
        get {
            return propertyValue as? String
        } set {
            self.propertyValue = newValue as String!
        }
    }
    
    public var dateValue: NSDate? {
        get {
            return propertyValue as? NSDate
        } set {
            self.propertyValue = newValue as NSDate!
        }
    }
}


// MARK: - Specific wrappers
public class Attendee: Property {
    public var calAddress: CalAddress? {
        get {
            if let v = self.propertyValue as? String {
                return NSURL(string: v)
            }
            
            return nil
        }
    }
}


public class Organizer: Property {
    public var calAddress: CalAddress? {
        get {
            if let v = self.propertyValue as? String {
                return NSURL(string: v)
            }
            
            return nil
        }
    }
}

public class Geo: Property {
    public var lat: CLLocationDegrees = 0.0
    public var lon: CLLocationDegrees = 0.0
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        fatalError("init(dictionary:) has not been implemented")
    }
    
    override public var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["lat", "lon"]
        }
    }
}


// MARK: - Generic wrappers
public class CalendarProperty: Property {
    
}


public class ReminderProperty: Property {
    
}


// MARK: - Alarm properties
public class AlarmProperty: Property {
    
}


public class Trigger: AlarmProperty {
    public var offsetTrigger: NSTimeInterval? {
        get {
            return self.propertyValue as? NSTimeInterval
        }
    }
    
    public var absoluteTrigger: NSDate? {
        get {
            return self.propertyValue as? NSDate
        }
    }
}


public class AudioAction: AlarmProperty {
    public var attach: Attachment? {
        get {
            return self.propertyValue as? Attachment
        }
    }
}


public class DisplayAction: AlarmProperty {
    public var desc: String? {
        get {
            return self.propertyValue as? String
        }
    }
}


public class EmailAction: AlarmProperty {
    public internal(set) var desc: String!
    public internal(set) var summary: String!
    public internal(set) var attendees = [Attendee]()
    public internal(set) var attach = [Attachment]()
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kDESCRIPTION, kSUMMARY, kATTENDEE, kATTACH]
        }
    }
}


// MARK: - X- and IANA properties
public class GenericProperty: Property {
    
}


public class IANAProperty: Property {
    
}