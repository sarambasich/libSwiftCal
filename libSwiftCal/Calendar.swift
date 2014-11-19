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
    public func parser(parserStr: String!, didMatchTodoc assemblyStr: String!) {
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