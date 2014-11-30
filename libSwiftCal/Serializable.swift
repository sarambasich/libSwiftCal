//
//  Serializable.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/15/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

/**
    Describes a type that can be serialized and de-serialized to and from
    its dictionary representation. Any class that adopts this protocol
    and calls the global 'init' function will receive the benefit of being
    generically serialized (partially as of this release).
*/
@objc public protocol Serializable {
    /// A list of strings ('keys') that serialize the object. Must be an
    /// in-order, one-to-one mapping of variable names to these keys.
    var serializationKeys: [String] { get }
    /// Initializes the object using its dictionary representation
    init(dictionary: [String : AnyObject])
    /// Returns a dictionary representation of this object
    func toDictionary() -> [String : AnyObject]
}
