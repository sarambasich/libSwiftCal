//
//  Parameter.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/23/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

public class Parameter: CalendarObject {
    public private(set) weak var property: Property?
    
    public internal(set) var key: AnyObject!
    public internal(set) var value: AnyObject!
    
    override init() {
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
            return super.serializationKeys + [SerializationKeys.ParameterKeyKey, SerializationKeys.ParamValueKey]
        }
    }
}