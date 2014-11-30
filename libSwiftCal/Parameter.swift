//
//  Parameter.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/23/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

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
    
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    public required init(dictionary: [String : AnyObject]) {
        super.init(dictionary: dictionary)
    }
    
    public override var serializationKeys: [String] {
        get {
            return super.serializationKeys + ["", SerializationKeys.ParameterKeyKey, SerializationKeys.ParamValueKey]
        }
    }
}