//
//  Calendar.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/20/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import EventKit

public class Calendar: CalendarObject, ParserObserver {
    private var calendarIdentifier: String!
    public internal(set) var reminders = [Reminder]()
    
    public internal(set) var calscale = CalendarProperty()
    public internal(set) var method = CalendarProperty()
    public internal(set) var prodID = CalendarProperty()
    public internal(set) var version = CalendarProperty()
    
    public var uid: String {
        get {
            return self.calendarIdentifier
        }
    }
    
    private var closure: ((cal: Calendar) -> Void)!
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
            return super.serializationKeys + [kUID, SerializationKeys.RemindersKey, kCALSCALE, kMETHOD, kPRODID, kVERSION, "", "", "", ""]
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
        println("Finished")
    }
}