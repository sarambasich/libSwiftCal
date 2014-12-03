//
//  Alarm.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 9/23/14.
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

import Foundation

/**
    Defines a VALARM calendar component.

    This object describes an alarm that is part of a VTODO or VEVENT
    component. An alarm contains a trigger and an action to be
    performed upon trigger.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.6.6
*/
public class Alarm: CalendarObject {
    /// The parent reminder object
    public private(set) weak var reminder: Reminder?
    
    /// The action to perform upon the alarm's trigger
    public var action: AlarmProperty! = AlarmProperty()
    /// The alarm's trigger either set as a duration from start or an absolute date time
    public var trigger: Trigger! = Trigger()
    /// A duration of time in between repeated triggering of the alarm
    public var duration: AlarmProperty! = AlarmProperty()
    /// A description of the alarm
    public var desc: AlarmProperty! = AlarmProperty()
    /// Summary for use in email action
    public var summary: AlarmProperty! = AlarmProperty()
    /// Attendees for use in email action
    public var attendees = [Attendee]()
    /// An integer representing the number of times to repeat the alarm after its initial trigger
    public var repeat: AlarmProperty! = AlarmProperty()
    /// Non-standard "X-" properties
    public var xProperties = [GenericProperty]()
    /// IANA-registered property names
    public var IANAProperties = [IANAProperty]()
    
    public required init() {
        super.init()
    }
    
    
    // MARK: - CalendarType
    public override func serializeToiCal() -> String {
        var result = String()
        
        result += kBEGIN + kCOLON + kVALARM + kCRLF
        
        result += model__serializeiCalChildren(self)
        
        result += kEND + kCOLON + kVALARM + kCRLF
        
        return result
    }
    
    
    // MARK: - Hashable
    public override var hashValue: Int {
        get {
            return (31 &* action.hash) &+ trigger.hash
        }
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        nscoder__initWithCoder(aDecoder, mirror: reflect(self), onObject: self)
    }

    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["", kACTION, kTRIGGER, kDURATION, kDESCRIPTION, kSUMMARY,
                SerializationKeys.AttendeesKey, kREPEAT, SerializationKeys.XPropertiesKey,
                SerializationKeys.IANAPropertiesKey]
        }
    }
}