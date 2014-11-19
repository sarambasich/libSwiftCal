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
    enum Status: String {
        case NeedsAcction = "Needs action"
        case Completed = "Completeted"
        case InProcess = "In-Process"
        case Canceled = "Canceled"
    }
    
    struct AccessClass {
        static let public_ = "PUBLIC"
        static let private_ = "PRIVATE"
        static let confidential = "CONFIDENTIAL"
        static var IANAToken: String?
        static var XName: String?
    }
    
    private(set) var dateTimestamp = NSDate()
    private(set) var uid = NSUUID()
    
    var accessClass: String?
    private(set) var eventCreated = NSDate()
    var description_: String?
    var geo: CLLocationCoordinate2D?
    
    var lastModified: NSDate?
    var organizer: Organizer?
    var percentComplete: UInt8? {
        didSet {
            if percentComplete < 0 {
                percentComplete = 0
            } else if percentComplete > 100 {
                percentComplete = 100
            }
        }
    }
    
    var recurrenceID: NSDate?
    var sequence = 0
    var status = Status.NeedsAcction
    var summary: String?
    
    var attachments: [Attachment]?
    var categories: [String]?
    var comments: [String]?
    var contacts: [String]?
    var exceptions: [NSDate]?
    var requestStatus: [RequestStatus]?
    var related: [CalendarObject]?
    var resources: [String]?
    var recurrenceDates: [RecurrenceDate]?
    var xProperties: [GenericProperty]?
    var IANAProperties: [IANAProperty]?
    
    var due: NSDate?
    var duration: NSTimeInterval?
    
    
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
            return super.serializationKeys + ["dtstamp", "uid", "class", "created", "description",
                "geo", "last-mod", "organizer", "percent", "recurid",
                "seq", "status", "summary", "attachments", "categories",
                "comments", "contacts", "exceptions", "request_status", "related",
                "resources", "recurrence_dates", "x_properties", "IANA_properties", "due",
                "duration", "location", "priority", "url"]
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