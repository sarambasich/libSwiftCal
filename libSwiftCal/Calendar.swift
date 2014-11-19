//
//  Calendar.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/20/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import EventKit

public class Calendar: CalendarObject {
    private var calendarIdentifier: String!
    public var uid: String {
        get {
            return self.calendarIdentifier
        }
    }
    
    // MARK: - ParserObserver
    func parser(parserStr: NSString, didMatchTodoc assemblyStr: NSString) {
    
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