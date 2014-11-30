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
    component.

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
    
    public private(set) var dateTimestamp: ReminderProperty! = ReminderProperty()
    public private(set) var uid: ReminderProperty! = ReminderProperty()
    
    public private(set) var accessClass: ReminderProperty! = ReminderProperty()
    public private(set) var completed: ReminderProperty! = ReminderProperty()
    public private(set) var createdTime: ReminderProperty! = ReminderProperty()
    public private(set) var desc: ReminderProperty! = ReminderProperty()
    public private(set) var start: ReminderProperty! = ReminderProperty()
    public private(set) var geo: Geo! = Geo()
    public private(set) var lastModified: ReminderProperty! = ReminderProperty()
    public private(set) var location: ReminderProperty! = ReminderProperty()
    public private(set) var organizer: Organizer! = Organizer()
    
    public private(set) var percentComplete: ReminderProperty! = ReminderProperty()
    public private(set) var priority: ReminderProperty! = ReminderProperty()
    public private(set) var recurrenceID: ReminderProperty! = ReminderProperty()
    public private(set) var sequence: ReminderProperty! = ReminderProperty()
    public private(set) var status: ReminderProperty! = ReminderProperty()
    
    public private(set) var summary: ReminderProperty! = ReminderProperty()
    public private(set) var URL: ReminderProperty! = ReminderProperty()
    
    public private(set) var rrule: ReminderProperty! = ReminderProperty()
    
    public private(set) var due: ReminderProperty! = ReminderProperty()
    public private(set) var duration: ReminderProperty! = ReminderProperty()
    
    public private(set) var attachments = [Attachment]()
    public private(set) var attendees = [Attendee]()
    public private(set) var categories = [ReminderProperty]()
    public private(set) var comments = [ReminderProperty]()
    public private(set) var contacts = [ReminderProperty]()
    
    public private(set) var exceptions = [ReminderProperty]()
    public private(set) var requestStatus = [RequestStatus]()
    public private(set) var related = [CalendarObject]() // TODO: weak ref
    public private(set) var resources = [ReminderProperty]()
    
    public private(set) var recurrenceDates = [RecurrenceDate]()
    public private(set) var xProperties = [GenericProperty]()
    public private(set) var IANAProperties = [IANAProperty]()
    
    public internal(set) var alarms = [Alarm]()
    
    // ***
    
    public var reminderStatus: Status? {
        get {
            if let s = self.status.stringValue {
                if let st = Status(rawValue: self.status.stringValue!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())) {
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
            return super.serializationKeys + [kDTSTAMP, kUID, kCLASS, kCOMPLETED, kCREATED, kDESCRIPTION, kDTSTART, kGEO, kLAST_MODIFIED, kLOCATION, kORGANIZER, kPERCENT_COMPLETE, kPRIORITY, kRECURRENCE_ID, kSEQUENCE, kSTATUS, kSUMMARY, kURL, kRRULE, kDUE, kDURATION, kATTACH, kATTENDEE, kCATEGORIES, kCOMMENT, kCONTACT, kEXDATE, kREQUEST_STATUS, kRELATED, kRESOURCES, kRDATE, SerializationKeys.XPropertiesKey, SerializationKeys.IANAPropertiesKey, SerializationKeys.AlarmsKey]
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