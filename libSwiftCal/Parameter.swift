//
//  Parameter.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/23/14.
//  
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

/**
    A property can have attributes with which it is associated.  These
    "property parameters" contain meta-information about the property or
    the property value.  Property parameters are provided to specify such
    information as the location of an alternate text representation for a
    property value, the language of a text property value, the value type
    of the property value, and other attributes.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.2
*/
public class Parameter: CalendarObject {
    /// The parent `Property` object
    public private(set) weak var property: Property?
    
    /// The key of the parameter
    public internal(set) var key: String! = ""
    /// The parameter's value
    public internal(set) var value = NSObject()
    
    public required init() {
        super.init()
    }
    
    
    // MARK: - CalendarType
    public override func serializeToiCal() -> String {
        var result = String()
        
        if let s = value as? String {
            result += self.key + kEQUALS + s
        } else if let v: AnyObject = JSONify(value) {
            result += "\(v)"
        }
        
        return result
    }
    
    
    // MARK: - NSCoding
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Serializable
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["", SerializationKeys.ParameterKeyKey,
                SerializationKeys.ParamValueKey]
        }
    }
}