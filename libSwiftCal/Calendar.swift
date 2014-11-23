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
    
    public internal(set) var calscale: CalendarProperty!
    public internal(set) var method: CalendarProperty!
    public internal(set) var prodID: CalendarProperty!
    public internal(set) var version: CalendarProperty!
    
    public var uid: String {
        get {
            return self.calendarIdentifier
        }
    }
    
    private var closure: ((cal: Calendar) -> Void)?
    public init(stringToParse s: String, completion: (cal: Calendar) -> Void) {
        super.init()
        self.closure = completion
        self.parser = CalParser(delegate: self)
        var err: NSError?
        self.parser.parseString(s, error: &err)
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
            return super.serializationKeys + ["", kCALSCALE, kMETHOD, kPRODID, kVERSION, "", "", ""] // maybe only 2 ""s?
        }
    }
    
    // Parsing
    private var parser: CalParser!
    private var currentTodoDict: [String : AnyObject]?
    
    // MARK: - ParserObserver
    public func parser(key: String!, willMatchIcalobject value: String!) {
        println("Starting...")
    }
    
    public func parser(key: String!, didMatchCalprops value: PropertyMatch!) {
        let k = key as NSString
        if k.isPropertyName() {
            let p = Property(dictionary: [k: value.value])
            model__setValue(p, forSerializationKey: key, model: self)
        } else {
            model__setValue(value, forSerializationKey: key, model: self)
        }
        
    }
    
    public func parser(key: String!, willMatchTodoc value: String!) {
        currentTodoDict = [String : AnyObject]()
    }
    
    public func parser(key: String!, didMatchTodoprop value: PropertyMatch!) {
        currentTodoDict![key] = value
    }
    
    public func parser(key: String!, didMatchTodoc value: String!) {
        let newTodoc = Reminder(dictionary: self.currentTodoDict!)
//        self.reminders.append(Reminder())
    }
    
    public func parser(key: String!, didMatchIcalobject value: String!) {
        self.closure!(cal: self)
        self.closure = nil
        println("Finished")
    }
}