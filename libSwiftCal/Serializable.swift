//
//  Serializable.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/15/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import UIKit

@objc public protocol Serializable {
    var serializationKeys: [String] { get }
    init(dictionary: [String : AnyObject])
    optional func initFromDict(dictionary: [String : AnyObject])
    func toDictionary() -> [String : AnyObject]
}
