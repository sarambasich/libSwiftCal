// Playground - noun: a place where people can play

import Foundation

// MARK: - Dates
_ = { () -> Void in
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
}
    
extension String {
    var len: Int {
        return countElements(self)
    }
    
    public func insertString(str: String, everyXCharacters n: Int, indexZero: Bool = false) -> String {
        var result = self
        
        var curIdx = 0
    
        var strIdx = 0
        if !indexZero {
            strIdx++
            curIdx++
        }
    
        while strIdx < self.len {
            if strIdx % n == 0 {
                println("Index: \(strIdx)")
                result = result.insertString(str, atIndex: curIdx)
                curIdx += str.len;
            }
            
            strIdx++
            curIdx++
            
        }
        
        return result
    }
    
    public func insertString(str: String, atIndex index: Int) -> String {
        let sub1 = self.substringToIndex(advance(self.startIndex, index))
        let sub2 = self.substringFromIndex(advance(self.startIndex, index))
        
        return sub1 + str + sub2
    }
}

var myStr = "hello hello hello hello hello hello hello hello"
//var myStr = "hello hello hello hello hello hello hello hello"
let s2 = myStr.insertString("OMG", everyXCharacters: 4, indexZero: true)