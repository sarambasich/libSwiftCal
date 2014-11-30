//
//  libSwiftCalTests.swift
//  libSwiftCalTests
//
//  Created by Stefan Arambasich on 11/10/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import UIKit
import XCTest
import libSwiftCal

class libSwiftCalTests: XCTestCase {
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testParseFromFile() {
        // This is an example of a functional test case.
        self.measureBlock { () -> Void in
            let exp = self.expectationWithDescription("parse")
            let str: String = NSString(data: NSData(contentsOfFile: "/Users/Stefan/Documents/Applications/iOS/Frameworks/libSwiftCal/libSwiftCalTests/EasyInput.ics")!, encoding: NSUTF8StringEncoding)!
            
            let c = { (cal: Calendar) -> Void in
                XCTAssert(cal.prodID.stringValue! == "-/MyList App/0.1a/EN", "FAILED")
                XCTAssert(cal.version.intValue! == 2, "FAILED")
                XCTAssert(cal.calscale.stringValue! == "GREGORIAN", "FAILED")
                
                XCTAssert(cal.reminders.count == 1, "FAILED")
                let firstRem = cal.reminders.first!
                XCTAssert(firstRem.due.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411695400.0)) == NSComparisonResult.OrderedSame, "FAILED")
                XCTAssert(firstRem.due.parameters.count == 3, "FAILED")
                XCTAssert(firstRem.uid.stringValue == "44C7728A-C070-4FD7-9C14-685BD9398F3E", "FAILED")
                XCTAssert(firstRem.percentComplete.intValue == 100, "FAILED")
                XCTAssert(firstRem.status.stringValue == "COMPLETE", "FAILED")
                XCTAssert(firstRem.sequence.intValue == 0, "FAILED")
                XCTAssert(firstRem.completed.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411674730.0)) == NSComparisonResult.OrderedSame, "FAILED")
                XCTAssert(firstRem.summary.stringValue == "Reminders are cool", "FAILED")
                XCTAssert(firstRem.start.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 410494430.0)) == NSComparisonResult.OrderedSame, "FAILED")
                XCTAssert(firstRem.createdTime.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 410494430.0)) == NSComparisonResult.OrderedSame, "FAILED")
                XCTAssert(firstRem.alarms.count == 1, "FAILED")
                
                let firstAlarm = firstRem.alarms.first!
                let xpros = firstAlarm.xProperties
                XCTAssert(firstAlarm.xProperties.count == 1, "FAILED")
                let firstXprop = firstAlarm.xProperties.first!
                XCTAssert(firstXprop.key == "X-UID", "FAILED")
                XCTAssert(firstXprop.stringValue == "C3489EE2-3F65-416F-B487-377F5C80F389", "FAILED")
                XCTAssert(firstAlarm.trigger.parameters.count == 1, "FAILED")
                XCTAssert(firstAlarm.trigger.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411709800.0)) == NSComparisonResult.OrderedSame, "FAILED")
                XCTAssert(firstAlarm.action.stringValue == "DISPLAY", "FAILED")
                XCTAssert(firstAlarm.desc.stringValue == "This is an alarm x1", "FAILED")
                exp.fulfill()
            }
            
            var cal = Calendar(stringToParse: str, completion: c)
        }
        
        
        waitForExpectationsWithTimeout(20.0, handler: { (e) -> Void in
            println(e)
        })
    }
    
    func testParseFromJSON() {
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
