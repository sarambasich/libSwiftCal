//
//  ListItem.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/15/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import UIKit
import EventKit


public class Reminder: CalendarObject {
    public enum Status: String {
        case NeedsAcction = "Needs action"
        case Completed = "Completeted"
        case InProcess = "In-Process"
        case Canceled = "Canceled"
    }
    
    struct AccessClass {
        static let public_ = "PUBLIC"
        static let private_ = "PRIVATE"
        static let confidential = "CONFIDENTIAL"
    }
    
    public private(set) var dateTimestamp = NSDate()
    public private(set) var uid = NSUUID()
    
    public private(set) var accessClass: String!
    public private(set) var completed: NSDate!
    public private(set) var eventCreated = NSDate()
    public private(set) var description_: String!
    public private(set) var start: NSDate!
    public private(set) var geo: CLLocationCoordinate2D!
    public private(set) var lastModified: NSDate!
    public private(set) var location: String!
    public private(set) var organizer: Organizer!
    
    public private(set) var percentComplete: UInt8 = 0 {
        didSet {
            if percentComplete < 0 {
                percentComplete = 0
            } else if percentComplete > 100 {
                percentComplete = 100
            }
        }
    }
    public private(set) var priority: Int!
    public private(set) var recurrenceID: NSDate!
    public private(set) var sequence = 0
    public private(set) var status: String!
    
    public private(set) var summary: String!
    public private(set) var URL: String!
    
    public private(set) var rrule: String!
    
    public private(set) var due: NSDate!
    public private(set) var duration: NSTimeInterval = 0.0
    
    public private(set) var attachments = [Attachment]()
    public private(set) var attendees = [Attendee]()
    public private(set) var categories = [String]()
    public private(set) var comments = [String]()
    public private(set) var contacts = [String]()
    
    public private(set) var exceptions = [NSDate]()
    public private(set) var requestStatus = [RequestStatus]()
    public private(set) var related = [CalendarObject]() // TODO: weak ref
    public private(set) var resources = [String]()
    
    public private(set) var recurrenceDates = [RecurrenceDate]()
    public private(set) var xProperties = [GenericProperty]()
    public private(set) var IANAProperties = [IANAProperty]()
    
    
    // MARK: - Init
    override init() {
        super.init()
    }
    
    
    // MARK: - Hashable
    public override var hashValue: Int {
        get {
            return model__defaultHash(model: self)
        }
    }
    
    
    // MARK: - iCal type
//    public required init(data: NSData) {
//
//        super.init(data: data)
//    }
//    
//    public override func stringifyToiCal() -> String {
//        return super.stringifyToiCal()
//    }
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init()
        
        nscoder__initWithCoder(aDecoder, mirror: reflect(self), onObject: self)
    }
    
    
    // MARK: - Serializable
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kDTSTAMP as String, kUID as String, kCLASS as String, kCOMPLETED as String, kCREATED as String, kDESCRIPTION as String, kDTSTART as String, kGEO as String, kLAST_MODIFIED as String, kLOCATION as String, kORGANIZER as String, kPERCENT_COMPLETE as String, kPRIORITY as String, kRECURRENCE_ID as String, kSEQUENCE as String, kSTATUS as String, kSUMMARY as String, kURL as String, kRRULE as String, kDUE as String, kDURATION as String, kATTACH as String, kATTENDEE as String, kCATEGORIES as String, kCOMMENT as String, kCONTACT as String, kEXDATE as String, kREQUEST_STATUS as String, kRELATED as String, kRESOURCES as String, kRDATE, "xprop", "iana_prop"]
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