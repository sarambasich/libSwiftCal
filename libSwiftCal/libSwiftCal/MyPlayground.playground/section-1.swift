// Playground - noun: a place where people can play

import Cocoa
import Foundation

var str = "Hello, playground"

let dtStr = "20140417T235000"

let formatter = NSDateFormatter()

let fmts = ["YYYYMMDD'T'HHmmssZ", "YYYYMMDD'T'HHmmss", "YYYYMMDD"]
var result: NSDate!

//for fmt in fmts {
//    var errStr: String?
//    var err: NSError?
//    var date: AnyObject?
//    formatter.dateFormat = fmt;
//    if formatter.getObjectValue(&date, forString: dtStr, range: nil, error: &err) {
//        println("The format! " + fmt)
//        result = date as NSDate;
//        break;
//    }
//}
//
//let x: NSDate = result as NSDate

@objc public protocol Serializable {
    var serializationKeys: [String] { get }
    init(dictionary: [String : AnyObject])
    func toDictionary() -> [String : AnyObject]
}

class SomeObj: NSObject, Serializable {
    var someField = "someField pre set value on SomeObj"
    var anotherField = OtherObj()
    
    required override init() {
        super.init()
    }
    
    required init(dictionary: [String : AnyObject]) {
        super.init()
        serializable__dictInit(dictionary, model: self)
    }
    
    var serializationKeys: [String] {
        get {
            return ["uno", "dos"]
        }
    }
    
    func toDictionary() -> [String : AnyObject] {
        return ["":""]
    }
}

class OtherObj: NSObject, Serializable {
    var someField = "someField pre set value on OtherObj"
    var anotherField = NSDate()
    
    required override init() {
        super.init()
    }
    
    required init(dictionary: [String : AnyObject]) {
        super.init()
        serializable__dictInit(dictionary, model: self)
    }
    
    var serializationKeys: [String] {
        get {
            return ["three", "four"]
        }
    }
    
    func toDictionary() -> [String : AnyObject] {
        return ["":""]
    }
}

func serializable__dictInit<T where T: NSObject, T: Serializable>(dictionary: [String: AnyObject], model m: T) {
    for (key, value) in dictionary {
        if let i = find(m.serializationKeys, key) {
            model__setValue(value as NSObject, forSerializationKey: key, model: m)
        }
    }
}

func object__getVarNames(mirror m: MirrorType) -> [String] {
    var result = [String]()
    for i in 0 ..< m.count {
        if m[i].0 == "super"{
            let rs = object__getVarNames(mirror: m[i].1)
            for r in rs {
                result.append(r)
            }
        } else {
            result.append(m[i].0)
        }
    }
    
    return result
}



//            let s = reflect(m)[j + 1].0
//            let val = reflect(m)[j + 1].1.value as NSObject
//            if val is Serializable {
//                println("True")
//            }
//            let c = NSClassFromString(NSStringFromClass(val.dynamicType)) as NSObject.Type
//            var instance = c()
//            let n = val.className

func model__setValue<T where T: NSObject, T: Serializable>(value: AnyObject, forSerializationKey key: String, model m: T) {
    let varNames = object__getVarNames(mirror: reflect(m))
    if let i = find(m.serializationKeys, key) {
        if let dict = value as? [String : AnyObject] {
            // This allows us to have nested dictionary representations
            // of Serializable constructs and have them init properly
            let v = reflect(m)[i + 1].1.value
            let vt = reflect(m)[i + 1].1.valueType
            let prop = class_getProperty(vt as NSObject.Type, reflect(m)[i + 1].0)
            if v is OtherObj {
                println("Yes")
                let x = T()
            }
            
        } else if let arr = value as? [AnyObject] {
            
        } else {
            m.setValue(value, forKey: varNames[i])
        }
    }
}

var someObj = SomeObj(dictionary: ["dos": ["three": "num#3", "four": NSDate(timeIntervalSince1970: 60.0)]] as [String : AnyObject])

let nest1 = someObj.someField
let nest2 = someObj.anotherField
let nest21 = someObj.anotherField.someField
let nest22 = someObj.anotherField.anotherField

