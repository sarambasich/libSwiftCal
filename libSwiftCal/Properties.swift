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
    override init() {
        super.init()
    }
    
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


public class Attendee: Property {
    var value = ""
}


public class CalendarProperty: Property {
    var value = ""
}

public class GenericProperty: Property {
    var value = GenericPropertyValue()
}


public class IANAProperty: Property {
    var value = IANAPropertyValue()
}


public class AlarmProperty: Property {
    weak var alarm: Alarm?
    
    override init() {
        super.init()
    }
    
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


public class TriggerProperty: AlarmProperty {
    var offsetTrigger: NSTimeInterval?
    var absoluteTrigger: NSDate?
    
    override init() {
        super.init()
    }
    
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


public class AudioAction: AlarmProperty {
    var attach: Attachment?

    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


public class DisplayAction: AlarmProperty {
    var desc: String
    public required init(coder aDecoder: NSCoder) {
        self.desc = ""
        super.init(coder: aDecoder)
    }
    
    public required init(dictionary: [String : AnyObject]) {
        self.desc = ""
        super.init(dictionary: dictionary)
    }
}


public class EmailAction: AlarmProperty {
    var desc: String
    var summary: String
    var attendees: [Attendee]
    var attach: [Attachment]?

    public required init(dictionary: [String : AnyObject]) {
        desc = ""
        summary = ""
        attendees = [Attendee]()
        super.init(dictionary: dictionary)
    }

    public required init(coder aDecoder: NSCoder) {
        desc = ""
        summary = ""
        attendees = [Attendee]()
        super.init(coder: aDecoder)
    }
}