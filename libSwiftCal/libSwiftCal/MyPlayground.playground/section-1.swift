// Playground - noun: a place where people can play

import Cocoa
import Foundation

var str = "Hello, playground"

//let dtStr = "20140417T235000"
let dtStr = "20140418T035000Z"

let formatter = NSDateFormatter()

let fmts = ["YYYYMMDD'T'HHmmssZ", "YYYYMMDD'T'HHmmss", "YYYYMMDD"]
var result: NSDate!

for fmt in fmts {
    var errStr: String?
    var err: NSError?
    var date: AnyObject?
    formatter.dateFormat = fmt;
    if formatter.getObjectValue(&date, forString: dtStr, range: nil, error: &err) {
        result = date as NSDate;
        break;
    }
}

let x: NSDate = result as NSDate
let n = x.timeIntervalSinceReferenceDate
