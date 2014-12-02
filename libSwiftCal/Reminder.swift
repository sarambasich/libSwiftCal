//
//  ListItem.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/15/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import UIKit
import EventKit

/**
    Defines a VTODO calendar component.

    This object describes a to-do event that is part of a VCALENDAR
    component. "Reminder" is interchangable with "to-do" unless
    specifically noted.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.6.2
*/
public class Reminder: CalendarObject {
    public enum Status: String {
        case NeedsAcction = "NEEDS-ACTION"
        case Completed = "COMPLETED"
        case InProcess = "IN-PROCESS"
        case Canceled = "CANCELLED"
    }
    
    struct AccessClass {
        static let public_ = "PUBLIC"
        static let private_ = "PRIVATE"
        static let confidential = "CONFIDENTIAL"
    }
///    In the case of an iCalendar object that specifies a
///    "METHOD" property, this property specifies the date and time that
///    the instance of the iCalendar object was created.  In the case of
///    an iCalendar object that doesn't specify a "METHOD" property, this
///    property specifies the date and time that the information
///    associated with the calendar component was last revised in the
///    calendar store.
    public private(set) var dateTimestamp: ReminderProperty! = ReminderProperty()
    /// Unique identifier
    public private(set) var uid: ReminderProperty! = ReminderProperty()
    
    /// The access classification (or visibility) of the reminder
    public private(set) var accessClass: ReminderProperty! = ReminderProperty()
    /// The datetime the reminder was completed or nil if it isn't
    public private(set) var completed: ReminderProperty! = ReminderProperty()
    /// The datetime this object was created in the calendar store
    public private(set) var createdTime: ReminderProperty! = ReminderProperty()
    /// A description of this reminder (longer than its summary)
    public private(set) var desc: ReminderProperty! = ReminderProperty()
    /// The datetime this reminder should start
    public private(set) var start: ReminderProperty! = ReminderProperty()
    /// The GPS coordinate of this location
    public private(set) var geo: Geo! = Geo()
    /// The datetime this reminder was last modified
    public private(set) var lastModified: ReminderProperty! = ReminderProperty()
    /// A description of the intended venue for this reminder
    public private(set) var location: ReminderProperty! = ReminderProperty()
    /// The person who created this reminder
    public private(set) var organizer: Organizer! = Organizer()
    
    /// This property is used by an assignee or delegatee of a
    /// to-do to convey the percent completion of a to-do to the
    /// "Organizer".
    public private(set) var percentComplete: ReminderProperty! = ReminderProperty()
    /// Describes this reminder's relative priority as an integer
    public private(set) var priority: ReminderProperty! = ReminderProperty()
    /// used in conjunction with the "UID" and
    /// "SEQUENCE" properties to identify a specific instance of a
    /// recurring "VEVENT", "VTODO", or "VJOURNAL" calendar component.
    /// The property value is the original value of the "DTSTART" property
    /// of the recurrence instance.
    public private(set) var recurrenceID: ReminderProperty! = ReminderProperty()
    /// The current integer sequence of revisions of this item
    public private(set) var sequence: ReminderProperty! = ReminderProperty()
    /// Overall status or progress for this reminder
    public private(set) var status: ReminderProperty! = ReminderProperty()
    
    /// A short summary or description of this reminder
    public private(set) var summary: ReminderProperty! = ReminderProperty()
    /// A pointer to a URL representation of this object
    public private(set) var URL: ReminderProperty! = ReminderProperty()
    
    /// Defines a rule or repeating pattern for
    /// recurring events, to-dos, journal entries, or time zone
    /// definitions.
    public private(set) var rrule: ReminderProperty! = ReminderProperty()
    
    /// Defines a datetime of when this reminder is due
    public private(set) var due: ReminderProperty! = ReminderProperty()
    /// Defines a duration after the start time for which this reminder is valid
    public private(set) var duration: ReminderProperty! = ReminderProperty()
    
    /// Items attached to this reminder
    public private(set) var attachments = [Attachment]()
    /// Attendees assigned to this reminder
    public private(set) var attendees = [Attendee]()
    /// A list of categories (strings) that describe this reminder
    public private(set) var categories = [ReminderProperty]()
    /// A list of comments (strings) about this reminder
    public private(set) var comments = [ReminderProperty]()
    /// A list of contacts (strings) attached to this reminder
    public private(set) var contacts = [ReminderProperty]()
    
    /// Exceptions to recurring datetimes
    public private(set) var exceptions = [ReminderProperty]()
    /// Whether the request was successful or otherwise impacted
    public private(set) var requestStatus = [RequestStatus]()
    /// Associated calendar objects
    public private(set) var related = [CalendarObject]() // TODO: weak ref
    /// A list of resources (string) required for this reminder
    public private(set) var resources = [ReminderProperty]()
    
    /// A list of recurrence dates for this reminder object
    public private(set) var recurrenceDates = [RecurrenceDate]()
    /// Non-standard "X-" properties
    public private(set) var xProperties = [GenericProperty]()
    /// IANA-registered property names
    public private(set) var IANAProperties = [IANAProperty]()
    
    /// A list of alarm components associated with this reminder
    public internal(set) var alarms = [Alarm]()
    
    // ***
    
    /// Returns the reminder status as a value of `Reminder.Status`
    public var reminderStatus: Status? {
        get {
            if let s = self.status.stringValue {
                let wsp = NSCharacterSet.whitespaceAndNewlineCharacterSet()
                if let st = Status(rawValue: self.status.stringValue!.stringByTrimmingCharactersInSet(wsp)) {
                    return st
                }
            }
            
            return nil
        } set {
            self.status.stringValue = newValue?.rawValue
        }
    }
    
    
    // MARK: - Init
    public required init() {
        super.init()
    }
    
    
    // MARK: - CalendarType
    public override func serializeToiCal() -> String {
        var result = String()
        
        result += kBEGIN + kCOLON + kVTODO + kCRLF
        
        result += model__serializeiCalChildren(self)
        
        result += kEND + kCOLON + kVTODO + kCRLF
        
        return result
    }
    
    
    // MARK: - Hashable
    public override var hashValue: Int {
        get {
            return model__defaultHash(model: self)
        }
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init()
        
        nscoder__initWithCoder(aDecoder, mirror: reflect(self), onObject: self)
    }
    
    
    // MARK: - Serializable
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kDTSTAMP, kUID, kCLASS, kCOMPLETED, kCREATED, kDESCRIPTION,
                kDTSTART, kGEO, kLAST_MODIFIED, kLOCATION, kORGANIZER, kPERCENT_COMPLETE, kPRIORITY,
                kRECURRENCE_ID, kSEQUENCE, kSTATUS, kSUMMARY, kURL, kRRULE, kDUE, kDURATION, kATTACH,
                kATTENDEE, kCATEGORIES, kCOMMENT, kCONTACT, kEXDATE, kREQUEST_STATUS, kRELATED,
                kRESOURCES, kRDATE, SerializationKeys.XPropertiesKey, SerializationKeys.IANAPropertiesKey,
                SerializationKeys.AlarmsKey]
        }
    }
    
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override func toDictionary() -> [String : AnyObject] {
        var result = [String: AnyObject]()

        serializable__addToDict(&result, mirror: reflect(self), onObject: self)
        
        return result
    }
}