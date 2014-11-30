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

var calendar: Calendar?

class libSwiftCalTests: XCTestCase {
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test1ParseFromFile() {
        // This is an example of a functional test case.
        self.measureBlock { () -> Void in
            let exp = self.expectationWithDescription("parse")
            let str: String = NSString(data: NSData(contentsOfFile: "/Users/Stefan/Documents/Applications/iOS/Frameworks/libSwiftCal/libSwiftCalTests/EasyInput.ics")!, encoding: NSUTF8StringEncoding)!
            
            let c = { (cal: Calendar) -> Void in
                calendar = cal
                
                XCTAssert(cal.prodID.stringValue! == "-/MyList App/0.1a/EN", "Unexpected prodID")
                XCTAssert(cal.version.stringValue! == "2.0", "Unexpected version")
                XCTAssert(cal.calscale.stringValue! == "GREGORIAN", "Unexpected calscale")
                
                XCTAssert(cal.reminders.count == 1, "Unexpected reminders count")
                let firstRem = cal.reminders.first!
                XCTAssert(firstRem.due.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411695400.0)) == NSComparisonResult.OrderedSame, "Unexpected dateValue")
                XCTAssert(firstRem.due.parameters.count == 3, "Unexpected parameters count")
                XCTAssert(firstRem.uid.stringValue == "44C7728A-C070-4FD7-9C14-685BD9398F3E", "Unexpected uid")
                XCTAssert(firstRem.percentComplete.intValue == 100, "Unexpected percentComplete")
                XCTAssert(firstRem.reminderStatus == .Completed, "Unexpected reminderStatus")
                XCTAssert(firstRem.sequence.intValue == 0, "Unexpected sequence")
                XCTAssert(firstRem.completed.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411674730.0)) == NSComparisonResult.OrderedSame, "Unexpected completed")
                XCTAssert(firstRem.summary.stringValue == "Reminders are cool", "Unexpected summary")
                XCTAssert(firstRem.start.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 410494430.0)) == NSComparisonResult.OrderedSame, "Unexpected start")
                XCTAssert(firstRem.createdTime.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 410494430.0)) == NSComparisonResult.OrderedSame, "Unexpected createdTime")
                XCTAssert(firstRem.alarms.count == 1, "Unexpected alarms count")
                
                let firstAlarm = firstRem.alarms.first!
                let xpros = firstAlarm.xProperties
                XCTAssert(firstAlarm.xProperties.count == 1, "Unexpected xProperties count")
                let firstXprop = firstAlarm.xProperties.first!
                XCTAssert(firstXprop.key == "X-UID", "Unexpected key")
                XCTAssert(firstXprop.stringValue == "C3489EE2-3F65-416F-B487-377F5C80F389", "Unexpected firstXprop")
                XCTAssert(firstAlarm.trigger.parameters.count == 1, "Unexpected parameters count")
                XCTAssert(firstAlarm.trigger.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411709800.0)) == NSComparisonResult.OrderedSame, "Unexpected trigger")
                XCTAssert(firstAlarm.action.stringValue == "DISPLAY", "Unexpected action")
                XCTAssert(firstAlarm.desc.stringValue == "This is an alarm x1", "Unexpected desc")
                
                exp.fulfill()
            }
            
            var cal = Calendar(stringToParse: str, completion: c)
        }
        
        
        waitForExpectationsWithTimeout(20.0, handler: { (e) -> Void in
            println(e)
        })
    }
    
    func test2Dict() {
        if let c = calendar {
            let d = c.toDictionary()
            var err: NSError?
            let json = NSJSONSerialization.dataWithJSONObject(d, options: nil, error: &err)
            if err == nil {
                let str = NSString(data: json!, encoding: NSUTF8StringEncoding)!
                let correctStr = NSString(data: NSData(contentsOfFile: "/Users/Stefan/Documents/Applications/iOS/Frameworks/libSwiftCal/libSwiftCalTests/EasyInput.json")!, encoding: NSUTF8StringEncoding)
                XCTAssert(str == correctStr, "Unexpected dictionary values")
            }
        }
    }
    
    func test3ParseFromJSON() {
        var err: NSError?
        let data = NSData(contentsOfFile: "/Users/Stefan/Documents/Applications/iOS/Frameworks/libSwiftCal/libSwiftCalTests/EasyInput.json")!
        let json: [String : AnyObject] = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: &err)! as [String : AnyObject]
        let cal = Calendar(dictionary: json)
        
        XCTAssert(cal.prodID.stringValue! == "-/MyList App/0.1a/EN", "Unexpected prodID")
        XCTAssert(cal.version.stringValue! == "2.0", "Unexpected version")
        XCTAssert(cal.calscale.stringValue! == "GREGORIAN", "Unexpected calscale")
        
        XCTAssert(cal.reminders.count == 1, "Unexpected reminders count")
        let firstRem = cal.reminders.first!
        let dt = firstRem.due.dateValue
        let de = NSDate(timeIntervalSinceReferenceDate: 411677400.0)
        XCTAssert(firstRem.due.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411677400.0)) == NSComparisonResult.OrderedSame, "Unexpected dateValue")
        XCTAssert(firstRem.due.parameters.count == 3, "Unexpected parameters count")
        XCTAssert(firstRem.uid.stringValue == "44C7728A-C070-4FD7-9C14-685BD9398F3E", "Unexpected uid")
        XCTAssert(firstRem.percentComplete.intValue == 100, "Unexpected percentComplete")
        XCTAssert(firstRem.reminderStatus == .Completed, "Unexpected reminderStatus")
        XCTAssert(firstRem.sequence.intValue == 0, "Unexpected sequence")
        XCTAssert(firstRem.completed.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411656730.0)) == NSComparisonResult.OrderedSame, "Unexpected completed")
        XCTAssert(firstRem.summary.stringValue == "Reminders are cool", "Unexpected summary")
        XCTAssert(firstRem.start.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 410476430.0)) == NSComparisonResult.OrderedSame, "Unexpected start")
        XCTAssert(firstRem.createdTime.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 410476430.0)) == NSComparisonResult.OrderedSame, "Unexpected createdTime")
        XCTAssert(firstRem.alarms.count == 1, "Unexpected alarms count")
        
        let firstAlarm = firstRem.alarms.first!
        let xpros = firstAlarm.xProperties
        XCTAssert(firstAlarm.xProperties.count == 1, "Unexpected xProperties count")
        let firstXprop = firstAlarm.xProperties.first!
        XCTAssert(firstXprop.key == "X-UID", "Unexpected key")
        XCTAssert(firstXprop.stringValue == "C3489EE2-3F65-416F-B487-377F5C80F389", "Unexpected firstXprop")
        XCTAssert(firstAlarm.trigger.parameters.count == 1, "Unexpected parameters count")
        XCTAssert(firstAlarm.trigger.dateValue!.compare(NSDate(timeIntervalSinceReferenceDate: 411691800.0)) == NSComparisonResult.OrderedSame, "Unexpected trigger")
        XCTAssert(firstAlarm.action.stringValue == "DISPLAY", "Unexpected action")
        XCTAssert(firstAlarm.desc.stringValue == "This is an alarm x1", "Unexpected desc")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
