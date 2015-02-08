
//  Serializable.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 9/15/14.
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
