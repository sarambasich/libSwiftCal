import Foundation

// MARK: - Protocol
@objc public protocol Serializable {
    var serializationKeys: [String] { get }
    init(dictionary: [String : AnyObject])
    func toDictionary() -> [String : AnyObject]
}

// MARK: - Funcs

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

func model__setValue<T where T: NSObject, T: Serializable>(value: AnyObject, forSerializationKey key: String, model m: T) {
    let varNames = object__getVarNames(mirror: reflect(m))
    if let i = find(m.serializationKeys, key) {
        if let dict = value as? [String : AnyObject] {
            // This allows us to have nested dictionary representations
            // of Serializable constructs and have them init properly
            let t1 = reflect(m)[i - 1].1.valueType
            if let t2 = t1 as? NSObject.Type {
                if t2 is Serializable.Type {
                    if let t3 = t2 as? Serializable.Type {
                         // Okay so it is, but how the heck to I use that initializer?! This won't work :( But Xcode suggests it...
//                        let finalObj = t3(dictionary: dict) // Segmentation fault: 11
//                        m.setValue(finalObj, forKey: varNames[i])
                    }
                }
            }
            
        } else if value is [AnyObject] {
            /* ... */
        } else {
            m.setValue(value, forKey: varNames[i])
        }
    }
}

// MARK: - Classes
class A: NSObject, Serializable {
    var oneVar: String!
    var twoVar: String! = ""
    
    required override init() {
        super.init()
    }
    
    required init(dictionary: [String : AnyObject]) {
        super.init()
        serializable__dictInit(dictionary, model: self)
    }
    
    func toDictionary() -> [String : AnyObject] {
        return ["":""] // Not applicable for this crash
    }
    
    var serializationKeys: [String] {
        get {
            return ["one", "two"]
        }
    }
}

class C: A {
    var fifthVar: String!
    var sixthVar: String! = ""
    
    required init() {
        super.init()
    }
    
    required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    override func toDictionary() -> [String : AnyObject] {
        return ["":""] // Not applicable for this crash
    }
    
    override var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["five", "six"]
        }
    }
}

class B: A {
    var thirdVar: String!
    var fourthVar = C()
    
    required init() {
        super.init()
    }
    
    required init(dictionary: [String : AnyObject]) {
        super.init()
        
        serializable__dictInit(dictionary, model: self)
    }
    
    override func toDictionary() -> [String : AnyObject] {
        return super.toDictionary() // Not applicable for this crash
    }
    
    override var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["three", "four"]
        }
    }
}

// MARK: - Test
let newB = B(dictionary: ["one": "1", "two": "2", "three": "3", "four": ["five": "5", "six": "6"]])
