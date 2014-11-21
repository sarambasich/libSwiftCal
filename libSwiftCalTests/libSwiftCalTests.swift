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
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
        
        let exp = expectationWithDescription("parse")
        let str: String = NSString(data: NSData(contentsOfFile: "/Users/Stefan/Documents/Applications/iOS/Frameworks/libSwiftCal/libSwiftCalTests/EasyInput.ics")!, encoding: NSUTF8StringEncoding)!
        var cal = Calendar(stringToParse: str)
//        var cal = CalendarObject(dictionary: ["id": 1337, "created": NSDate(), "last_updated": NSDate()])
        let x = 10
        let y = 20
        
        waitForExpectationsWithTimeout(20.0, handler: { (e) -> Void in
            println(e)
        })
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
