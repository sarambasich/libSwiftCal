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
    private var parser: CalParser!
    
    
    public var uid: String {
        get {
            return self.calendarIdentifier
        }
    }
    
    // MARK: - ParserObserver
    public func parser(key: String!, didMatchTodoprop value: String!) {
        let x = 10
    }
    
    public func parser(key: String!, willMatchTodoc value: String!) {
        let x = 10
    }
    
    public func parser(key: String!, didMatchCalprops value: String!) {
        let x = 10
    }
    
    public func parser(key: String!, didMatchSummary value: String!) {
        let x = 10
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