//
//  Calendar.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 10/20/14.
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
    private var _calendarIdentifier: String!
    
    public var calendarIdentifier: String! {
        get {
            return self._calendarIdentifier
        } set {
            if newValue != nil {
                self._calendarIdentifier = newValue!
            }
        }
    }
    
    /// Only supports the "GREGORIAN" calendar
    public internal(set) var calscale = CalendarProperty(dictionary: [SerializationKeys.PropertyKeyKey: kCALSCALE, SerializationKeys.PropertyValKey: Constants.CalScaleGregorian])
    /// Defines the iCalendar object method associated with the calendar object
    public internal(set) var method = CalendarProperty()
    /// Specifies the identifier for the product that created the iCalendar object.
    public internal(set) var prodID = CalendarProperty(dictionary: [SerializationKeys.PropertyKeyKey: kPRODID, SerializationKeys.PropertyValKey: Constants.libSwiftCalProdID])
    /// The calendar's required version
    public internal(set) var version = CalendarProperty(dictionary: [SerializationKeys.PropertyKeyKey: kVERSION, SerializationKeys.PropertyValKey: Constants.iCalendarVersion])
    
    /// List of VTODO components belonging to this calendar
    public var reminders = [Reminder]()
    
    /// UID
    public var uid: String {
        get {
            return self.calendarIdentifier
        }
    }
    
    private var closure: ((Calendar?, e: NSError?) -> Void)!
    /**
        Returns a new representation of a VCALENDAR object and beings parsing the inputted
        string value.
    
        :param: s The string to parse from iCalendar into libSwiftCal.
        :completion: A completion block called upon the parsing's completion.
    */
    public init(stringToParse s: String, completion: (Calendar?, e: NSError?) -> Void) {
        super.init()
        self.closure = completion
        self.parser = CalParser(delegate: self)
        var err: NSError?
        self.parser.parseString(s, error: &err)
        if err != nil {
            self.closure(nil, e: err)
        }
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
        self.closure(self, e: nil)
        self.closure = nil
    }
}