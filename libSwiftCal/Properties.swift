//
//  Properties.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/19/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation
import EventKit

typealias Duration = NSTimeInterval

typealias IANAPropertyValue = String
typealias GenericPropertyValue = String

public class Property: CalendarObject {
    public internal(set) var propertyValue: AnyObject!
    public internal(set) var parameters = [Parameter]()
}


public class Attendee: Property {

}


public class CalendarProperty: Property {
    
}


public class GenericProperty: Property {
    
}


public class IANAProperty: Property {
    
}


public class AlarmProperty: Property {
    
}


public class TriggerProperty: AlarmProperty {
    var offsetTrigger: NSTimeInterval!
    var absoluteTrigger: NSDate!
}


public class AudioAction: AlarmProperty {
    public var attach: Attachment!
}


public class DisplayAction: AlarmProperty {
    var desc: String!
}


public class EmailAction: AlarmProperty {
    var desc: String!
    var summary: String!
    var attendees = [Attendee]()
    var attach = [Attachment]()
}