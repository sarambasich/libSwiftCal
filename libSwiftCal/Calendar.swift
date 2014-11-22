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
    
    public var uid: String {
        get {
            return self.calendarIdentifier
        }
    }
    
    // Parsing
    private var parser: CalParser!
    private var currentTodoDict: [String : AnyObject]?
    
    // MARK: - ParserObserver
    public func parser(key: String!, didMatchCalprops value: String!) {
        model__setValue(value, forSerializationKey: key, model: self)
    }
    
    public func parser(key: String!, willMatchTodoc value: String!) {
        currentTodoDict = [String : AnyObject]()
    }
    
    public func parser(key: String!, didMatchTodoprop value: String!) {
        let k = key
        let v = value
        currentTodoDict![key] = value
    }
    
    public func parser(key: String!, didMatchTodoc value: String!) {
        let d = self.currentTodoDict
        self.reminders.append(Reminder(dictionary: self.currentTodoDict!))
        self.currentTodoDict = nil
    }
    
    public func parser(key: String!, didMatchIcalobject value: String!) {
        let x = 10
        let y = 20
    }
    
    public init(stringToParse s: String) {
        super.init()
        self.parser = CalParser(delegate: self)
        var err: NSError?
        self.parser.parseString(s, error: &err)
    }

    public required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public required init(dictionary: [String : AnyObject]) {
        fatalError("init(dictionary:) has not been implemented")
    }
    
//    public override func stringifyToiCal() -> String {
//        return ""
//    }
    
//    public func parser(p: PKParser, didMatchCalendar assembly: PKAssembly) {
//        let ass = assembly
//        let sass = ass.stack
//        println(ass)
//    }
//    
//    public func parser(p: PKParser, didMatchXwrcalname assembly: PKAssembly) {
//        let ass = assembly
//        let sass = ass.stack
//        println(ass)
//    }
}