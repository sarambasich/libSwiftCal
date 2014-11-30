//
//  Properties.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/19/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation
import EventKit

/**
    A `TypedValue` type has only a generic representation of an object
    that it holds. This protocol provides facilities to convert that 
    object to a more specific type. Conversion is best-effort and may
    fail if the underlyng data does not match or cannot be converted.
*/
public protocol TypedValue {
    /// The value's `Int` representation
    var intValue: Int? { get set }
    /// The value's `Bool` representation
    var boolValue: Bool? { get set }
    /// The value's `Double` representation
    var doubleValue: Double? { get set }
    /// The value's `String` representation
    var stringValue: String? { get set }
    /// The value's date representation
    var dateValue: NSDate? { get set }
}


/**
    A property is the definition of an individual attribute describing a
    calendar object or a calendar component.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.5
*/
public class Property: CalendarObject, TypedValue {
    public internal(set) var key: String! = ""
    public internal(set) var propertyValue: AnyObject!
    public internal(set) var parameters = [Parameter]()
    
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
    }
    
    public override func toDictionary() -> [String : AnyObject] {
        if let k = self.key {
            if let p: AnyObject = propertyValue {
                if let j: AnyObject = JSONify(propertyValue) {
                    var dict = [String : AnyObject]()
                    serializable__addToDict(&dict, mirror: reflect(self), onObject: self)
                    return dict
                }
            }
        }
        
        return [:]
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
/**
    Defines a person who is an "attendee" to a particular calendar
    component.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.4.1
*/
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

/**
    The organizer of the calendar event.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.4.3
*/
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

/**
    The geographic location of a component specfied by latitude
    and longitude values.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.1.6
*/
public class Geo: Property {
    public var lat: CLLocationDegrees = 0.0
    public var lon: CLLocationDegrees = 0.0
    
    public required init() {
        super.init()
    }
    
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
/**
    Abstract class representing any one of property parameters that
    are defined on a calendar component.
*/
public class CalendarProperty: Property {
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public required init() {
        super.init()
    }
}


/**
    Abstract class representing any one of property parameters that
    are defined on a reminder component.
*/
public class ReminderProperty: Property {
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public required init() {
        super.init()
    }
}


// MARK: - Alarm properties
/**
    Abstract class representing any one of property parameters that
    are defined on an alarm component.
*/
public class AlarmProperty: Property {
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public required init() {
        super.init()
    }
}

/**
    Specifies when an alarm will trigger.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.6.3
*/
public class Trigger: AlarmProperty {
    public var offsetTrigger: NSTimeInterval? {
        get {
            return self.propertyValue as? Duration
        }
    }
    
    public var absoluteTrigger: NSDate? {
        get {
            return self.propertyValue as? NSDate
        }
    }
}


/**
    Specifies audio to play when an alarm triggers.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.6.1
*/
public class AudioAction: AlarmProperty {
    public var attach: Attachment? {
        get {
            return self.propertyValue as? Attachment
        }
    }
}


/**
    Specifies a message to display when an alarm triggers.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.6.1
*/
public class DisplayAction: AlarmProperty {
    public var desc: String? {
        get {
            return self.propertyValue as? String
        }
    }
}


/**
    Specifies an email message to send when an alarm triggers.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.6.1
*/
public class EmailAction: AlarmProperty {
    public internal(set) var desc: String! = ""
    public internal(set) var summary: String! = ""
    public internal(set) var attendees = [Attendee]()
    public internal(set) var attach = [Attachment]()
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kDESCRIPTION, kSUMMARY, kATTENDEE, kATTACH]
        }
    }
}


// MARK: - X- and IANA properties
/**
    Non-standard "X-" property
*/
public class GenericProperty: Property {
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public required init() {
        super.init()
    }
}


/**
    An IANA-registered property
*/
public class IANAProperty: Property {
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public required init() {
        super.init()
    }
}