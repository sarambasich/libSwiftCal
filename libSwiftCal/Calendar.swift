//
//  Calendar.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/20/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import EventKit

/**
    Defines a VCALENDAR calendar component.

    This object describes a calendar object, a collection of calendaring
    and scheduling information.

    This class features an iCalendar parser which takes an input string
    and receives callbacks when an item in the iCalendar file is matched.
    Use this to parse and create new instances of calendar objects.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.4
*/
public class Calendar: CalendarObject, ParserObserver {
    /// Non-standard unique identifier for the calendar
    private var calendarIdentifier: String!
    
    /// Only supports the "GREGORIAN" calendar
    public internal(set) var calscale = CalendarProperty()
    /// Defines the iCalendar object method associated with the calendar object
    public internal(set) var method = CalendarProperty()
    /// Specifies the identifier for the product that created the iCalendar object.
    public internal(set) var prodID = CalendarProperty()
    /// The calendar's required version
    public internal(set) var version = CalendarProperty()
    
    /// List of VTODO components belonging to this calendar
    public internal(set) var reminders = [Reminder]()
    
    /// UID
    public var uid: String {
        get {
            return self.calendarIdentifier
        }
    }
    
    private var closure: ((cal: Calendar) -> Void)!
    /**
        Returns a new representation of a VCALENDAR object and beings parsing the inputted
        string value.
    
        :param: s The string to parse from iCalendar into libSwiftCal.
        :completion: A completion block called upon the parsing's completion.
    */
    public init(stringToParse s: String, completion: (cal: Calendar) -> Void) {
        super.init()
        self.closure = completion
        self.parser = CalParser(delegate: self)
        var err: NSError?
        self.parser!.parseString(s, error: &err)
    }
    
    public required init() {
        super.init()
    }
    
    
    // MARK: - CalendarType
    public override func serializeToiCal() -> String {
        var result = String()
        
        result += kBEGIN + kCOLON + kVCALENDAR + kCRLF
        
        result += model__serializeiCalChildren(self)
        
        result += kEND + kCOLON + kVCALENDAR + kCRLF
        
        return result
    }

    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + [kUID, kCALSCALE, kMETHOD, kPRODID, kVERSION, SerializationKeys.RemindersKey, "", "", "", "", "", ""]
        }
    }
    
    // Parsing
    private var parser: CalParser! = CalParser()
    private var currentTodoDict: [String : AnyObject]! = [String : AnyObject]()
    private var currentAlarmDict: [String : AnyObject]! = [String : AnyObject]()
    private var currentAlarmXProps: [[String : AnyObject]]! = [[String : AnyObject]]()
    private var currentAlarms: [[String : AnyObject]] = [[String : AnyObject]]()
    
    // MARK: - ParserObserver
    public func parser(key: String!, willMatchIcalobject value: String!) {
        
    }
    
    public func parser(key: String!, didMatchCalprops value: PropertyMatch!) {
        model__setValue(value.toDictionary(), forSerializationKey: key, model: self)
    }
    
    public func parser(key: String!, willMatchTodoc value: String!) {
        currentTodoDict = [String : AnyObject]()
    }
    
    public func parser(key: String!, didMatchTodoprop value: PropertyMatch!) {
        let val: [NSObject : AnyObject] = value.toDictionary()
        currentTodoDict![key] = val
    }
    
    public func parser(key: String!, willMatchAlarmc value: String!) {
        currentAlarmDict = [String : AnyObject]()
    }
    
    public func parser(key: String!, didMatchAlarmprop value: PropertyMatch!) {
        let k = key as NSString
        if k.isXValue() {
            if currentAlarmXProps == nil {
                currentAlarmXProps = [[String : AnyObject]]()
            }
            
            currentAlarmXProps.append(value.toDictionary() as [String : AnyObject])
        } else {
            currentAlarmDict[key] = value.toDictionary()
        }
    }
    
    public func parser(key: String!, didMatchAlarmc value: String!) {
        currentAlarmDict[SerializationKeys.XPropertiesKey] = currentAlarmXProps
        currentAlarms.append(currentAlarmDict)
        currentAlarmDict = nil
    }
    
    public func parser(key: String!, didMatchTodoc value: String!) {
        self.currentTodoDict[SerializationKeys.AlarmsKey] = currentAlarms
        let newTodoc = Reminder(dictionary: self.currentTodoDict!)
        self.reminders.append(newTodoc)
        self.currentAlarms.removeAll()
        self.currentAlarmXProps.removeAll()
    }
    
    public func parser(key: String!, didMatchIcalobject value: String!) {
        self.closure!(cal: self)
        self.closure = nil
    }
}