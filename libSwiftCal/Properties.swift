//
//  Properties.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 9/19/14.
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

import CoreLocation

/**
    Returns a localized friendly status name for the given input.

    :param: status The status level to get a friendly name for.

    :return: A string description of the status or nil if invalid.
*/
public func priority__toString(status: Int?) -> String? {
    var result: String?
    
    if let s = status {
        switch s {
        case kPriorityHigh:
            result = NSLocalizedString("High", comment: "")
        case kPriorityNormal:
            result = NSLocalizedString("Normal", comment: "")
        case kPriorityLow:
            result = NSLocalizedString("Low", comment: "")
        default:
            break
        }
    }
    
    return result
}

/**
    A `TypedValue` type has only a generic representation of an object
    that it holds. This protocol provides methods to convert that
    object to a more specific type. Conversion is best-effort and may
    fail if the underlyng data does not match or cannot be converted.
*/
public protocol TypedValue {
    /// The value's `Int` representation
    var intValue: Int? { get set }
    /// The value's `UInt` representation
    var uintValue: UInt? { get set }
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
    
    
    public override func serializeToiCal() -> String {
        // No key? Don't serialize.
        if self.key.isEmpty {
            return ""
        }
        
        // Empty string? Let's keep it clean. Don't serialize it.
        let valStr: String? = JSONify(self.propertyValue) as? String
        if valStr != nil {
            if valStr!.isEmpty {
                return ""
            }
        }
        
        var result = String()
        
        result += self.key
        
        result += self.serializeParameters()
        
        result += kCOLON
        
        if let s = valStr {
            result += s.escapeForiCalendar()
        } else if let v: AnyObject = JSONify(self.propertyValue) {
            result += "\(v)".escapeForiCalendar()
        }
        
        if result.len > 73 {
            result = result.insertString(kCRLF + " ", everyXCharacters: 73)
        }
        
        result += kCRLF
        
        return result
    }
    
    func serializeParameters() -> String {
        var result = String()
        
        if self.parameters.count > 0 {
            for p in self.parameters {
                result += kSEMICOLON
                result += p.serializeToiCal()
            }
        }
        
        return result
    }

    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
        
        if let s = self.stringValue? {
            self.stringValue = self.stringValue!.removeiCalendarEscapes()
        }
    }
    
    public override func toDictionary() -> [String : AnyObject] {
        if let k = self.key {
            if let str = self.stringValue {
                if str.isEmpty {
                    return [:]
                }
            }
            
            if let p: AnyObject = self.propertyValue {
                if let j: AnyObject = JSONify(self.propertyValue) {
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
    
    public var uintValue: UInt? {
        get {
            return propertyValue as? UInt
        } set {
            self.propertyValue = newValue as UInt!
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
    public private(set)var lat: CLLocationDegrees = 0.0
    public private(set)var lon: CLLocationDegrees = 0.0
    
    public required init() {
        super.init()
    }
    
    public init(latitude lat: CLLocationDegrees, longitude lon: CLLocationDegrees) {
        super.init(dictionary: [SerializationKeys.PropertyKeyKey: kGEO, SerializationKeys.PropertyValKey: "\(lat);\(lon)"])
        
        self.lat = lat
        self.lon = lon
    }
    
    public init(coordinate: CLLocationCoordinate2D) {
        super.init(dictionary: [SerializationKeys.PropertyKeyKey: kGEO, SerializationKeys.PropertyValKey: "\(coordinate.latitude);\(coordinate.longitude)"])
        
        self.lat = coordinate.latitude
        self.lon = coordinate.longitude
    }
    
    public var coordinate: CLLocationCoordinate2D? {
        get {
            if self.lat != 0.0 && self.lon != 0.0 {
                return CLLocationCoordinate2DMake(self.lat, self.lon)
            }
            
            return nil
        }
    }
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
        
        if let val: AnyObject = dictionary[SerializationKeys.PropertyValKey] {
            if let v = val as? String {
                let comps = v.componentsSeparatedByString(";")
                if comps.count == 2 {
                    let lat = (comps[0] as NSString).doubleValue
                    let lon = (comps[1] as NSString).doubleValue
                    
                    if lat != 0.0 && lon != 0.0 {
                        self.lat = lat
                        self.lon = lon
                    }
                }
            }
        }
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
    public var offsetTrigger: Duration? {
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
    
    public struct Common {
        public static let X_EPOCAGENDAENTRYTYPE = "X-EPOCAGENDAENTRYTYPE" // defines the client calendar type
        public static let X_FUNAMBOL_AALARMOPTIONS = "X-FUNAMBOL-AALARMOPTIONS"
        public static let X_FUNAMBOL_ALLDAY = "X-FUNAMBOL-ALLDAY" // all day event flag
        public static let X_MICROSOFT_CDO_ALLDAYEVENT = "X-MICROSOFT-CDO-ALLDAYEVENT" // Outlook all day event flag
        public static let X_MICROSOFT_CDO_BUSYSTATUS = "X-MICROSOFT-CDO-BUSYSTATUS" // Outlook status info
        public static let X_WR_CALNAME = "X-WR-CALNAME"
        public static let X_WR_CALDESC = "X-WR-CALDESC"
        public static let X_WR_RELCALID = "X-WR-RELCALID"
        public static let X_WR_TIMEZONE = "X-WR-TIMEZONE"
        public static let X_PUBLISHED_TTL = "X-PUBLISHED-TTL"
        public static let X_WR_ALARMUID = "X-WR-ALARMUID"
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