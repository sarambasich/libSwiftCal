//
//  Attachment.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/14/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import UIKit

public class Attachment: Property {
    public var URI: String {
        get {
            return self.propertyValue as String
        } set {
            self.propertyValue = newValue
        }
    }
    
    public private(set)var binary: NSData!
}
