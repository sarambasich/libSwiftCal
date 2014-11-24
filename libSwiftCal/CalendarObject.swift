//
//  CalendarObject.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/15/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import UIKit

//func model__addListener<T: CalendarType>(l: CalendarObjectListener, model m: T) {
//    var found = false
//    for i in 0 ..< m.listeners!.count {
//        let listener = m.listeners![i]
//        if l.hash == listener.hash {
//            found = true
//            break
//        }
//    }
//    
//    if !found {
//        var ls = m.listeners
//        ls!.append(l)
//    }
//}
//
//func model__removeListener<T: CalendarType>(l: CalendarObjectListener, model m: T) {
//    var idx: Int?
//    for i in 0 ..< m.listeners!.count {
//        let listener = m.listeners![i]
//        if l.hash == listener.hash {
//            idx = i
//            break
//        }
//    }
//    
//    if idx != nil {
//        var ls = m.listeners
//        ls!.removeAtIndex(idx!)
//    }
//}

public struct SerializationKeys {
    static let XPropertiesKey = "x-prop"
    static let IANAPropertiesKey = "iana-prop"
    static let RemindersKey = "reminders"
    static let PropertyKeyKey = "prop_key"
    static let PropertyValKey = "prop_value"
    static let ParametersKey = "parameters"
    static let ParameterKeyKey = "param_key"
    static let ParamValueKey = "param_value"
    static let AlarmsKey = "alarms"
}

func model__defaultHash<T where T: Hashable, T: CalendarObject>(model m: T) -> Int {
    return (31 &* m.created.hash) &+ m.updated.hash
}

func model__getDiffBetweenCalendarObjects(modelOne m1: MirrorType, modelTwo m2: MirrorType) -> [String] {
    var results = [String]()
    for i in 0 ..< m1.count {
        let p = m1[i].0
        let c1 = m1[i].1
        let c2 = m2[i].1
        
        if p == "super" {
            return model__getDiffBetweenCalendarObjects(modelOne: c1, modelTwo: c2)
        } else {
            var c1o = c1.value as? NSObject
            var c2o = c2.value as? NSObject
            
            if c1o != nil && c2o != nil {
                if c1o != c2o {
                    results.append(p)
                }
            }
        }
    }
    
    return results
}

func model__setValue<T where T: NSObject, T: Serializable>(value: AnyObject, forSerializationKey key: String, model m: T) {
    let varNames = object__getVarNames(mirror: reflect(m))
    if let i = find(m.serializationKeys, key) {
        if value is [String : AnyObject] {
            // This allows us to have nested dictionary representations of Serializable constructs and have them init properly
            let mr = reflect(m)
            let mri = mr[i]
//            let ar: [AnyObject] = [AnyObject](mri as )
            let mrip = mri.0
            let mric = mri.1
            let v = reflect(m)[i].1
            let varType = reflect(m)[i].1.valueType
            if varType is T.Type {
                let finalObj = T.init(dictionary: value as [String : AnyObject])
                m.setValue(finalObj, forKey: varNames[i])
            } else {
                m.setValue(value, forKey: varNames[i])
            }
        } else {
            m.setValue(value, forKey: varNames[i])
        }
    }
}

//func model__update<T where T: CalendarType, T: NSObject>(currentCalendarObject cm: T, newCalendarObject nm: T) {
//    let diffs = model__getDiffBetweenCalendarObjects(modelOne: reflect(cm), modelTwo: reflect(nm))
//    var newVals = [NSObject]()
//    for d in diffs {
//        let nv = nm.valueForKey(d) as NSObject
//        cm.setValue(nv, forKey: d)
//    }
//}

func nscoder__addToCoder<T: Serializable>(aCoder: NSCoder, mirror m: MirrorType, onObject o: T) {
    for i in 0 ..< m.count {
        let p = m[i].0
        let c = m[i].1
        
        if p == "super" {
            nscoder__addToCoder(aCoder, mirror: c, onObject: o)
        } else {
            let j = find(object__getVarNames(mirror: reflect(o)), p)
            aCoder.setValue(c.value as? NSObject, forKey: o.serializationKeys[j!])
        }
    }
}

func nscoder__initWithCoder<T where T: NSObject, T: Serializable>(aDecoder: NSCoder, mirror m: MirrorType, onObject o: T) {
    for i in 0 ..< o.serializationKeys.count {
        let keyName = o.serializationKeys[i]
        if let val: AnyObject = aDecoder.valueForKey(keyName) {
            model__setValue(val, forSerializationKey: keyName, model: o)
        }
    }
}

func nscopying__copyWithZone<T: NSObject where T: NSCopying>(fromMirror fm: MirrorType, inout toObject toObj: T) {
    for i in 0 ..< fm.count {
        let p = fm[i].0
        let c = fm[i].1
        
        if p == "super" {
            nscopying__copyWithZone(fromMirror: c, toObject: &toObj)
        } else {
            toObj.setValue(c.value as? NSObject, forKey: p)
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

func serializable__dictInit<T where T: NSObject, T: Serializable>(dictionary: [String: AnyObject], model m: T) {
    for (key, value) in dictionary {
        if let i = find(m.serializationKeys, key) {
            model__setValue(value as NSObject, forSerializationKey: key, model: m)
        }
    }
}

func serializable__addToDict<T: Serializable>(inout dict: [String : AnyObject], mirror m: MirrorType, onObject o: T) {
    for i in 0 ..< m.count {
        let p = m[i].0
        let c = m[i].1
        
        if p == "super" {
            serializable__addToDict(&dict, mirror: c, onObject: o)
        } else {
            let j = find(object__getVarNames(mirror: reflect(o)), p)
            dict[o.serializationKeys[j!]] = c.value as? NSObject
        }
    }
}

// MARK: - Equatable (CalendarObject class)
public func == (lhs: CalendarObject, rhs: CalendarObject) -> Bool {
    return lhs === rhs || lhs.id == rhs.id
}

public func != (lhs: CalendarObject, rhs: CalendarObject) -> Bool {
    return !(lhs == rhs)
}


// MARK: - CalendarObject class
public class CalendarObject: NSObject, CalendarType {
    public private(set) var id = Int.max
    
    public private(set) var created = NSDate()
    public private(set) var updated = NSDate()
    
    var observers = [Observer]()
    
    
    // MARK: - Init
    override init() {
        
    }
    
    
    
    // MARK: - Hashable
    public override var hashValue: Int {
        get {
            return (31 &* created.hash) &+ updated.hash
        }
    }
    
    
    // MARK: - NSCopying
    public func copyWithZone(zone: NSZone) -> AnyObject {
        var c = CalendarObject()
        
        nscopying__copyWithZone(fromMirror: reflect(self), toObject: &c)
        
        return c
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init()
        
        nscoder__initWithCoder(aDecoder, mirror: reflect(self), onObject: self)
    }
    
    public func encodeWithCoder(aCoder: NSCoder) {
        nscoder__addToCoder(aCoder, mirror: reflect(self), onObject: self)
    }
    
    
    // MARK: - Observable
    public func addObserver(observer o: Observer) {
        observers.append(o)
    }
    
    
    // MARK: - Serializable
    public var serializationKeys: [String] {
        get {
            return ["id", "created", "last_updated", ""]
        }
    }
    
    public required init(dictionary: [String : AnyObject]) {
        super.init()
        
        serializable__dictInit(dictionary, model: self)
    }
    
    public func toDictionary() -> [String : AnyObject] {
        var result = [String: AnyObject]()
        let m = reflect(self)
        
        serializable__addToDict(&result, mirror: m, onObject: self)
        
        return result
    }
}
