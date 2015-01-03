// Playground - noun: a place where people can play

import Foundation

//var str = "Hello, playground"

//let dtStr = "20141120T103045Z"
//let dtStr = "20140418T035000Z"
//let dtStr = "20140417T175530Z"
//let dtStr = "2014-12-09T17:00:00+00:00"
let dtStr = "20141106T035745Z"

let fmts = ["yyyyLLdd'T'HHmmssZ", "yyyyLLdd'T'HHmmss", "yyyyLLdd", "yyyyLLdd'T'HHmmss'Z'"]
var result: NSDate!

for fmt in fmts {
    var date: AnyObject?
    var formatter = NSDateFormatter()
    formatter.dateStyle = NSDateFormatterStyle.FullStyle
    formatter.dateFormat = fmt;
    formatter.locale = NSLocale.currentLocale()
    if let date = formatter.dateFromString(dtStr) {
        result = date as NSDate;
        break;
    }
}

let n = result.timeIntervalSinceReferenceDate
let d = NSDate(timeIntervalSinceReferenceDate: 436939065.0)