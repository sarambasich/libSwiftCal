//
//  Attachment.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/14/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import UIKit
/**
    A representation of a document object to associate with a calendar
    component.

    An Attachment may contain either a URI pointing to the desired resource
    or an inline binary encoded representation of the file.

    :URL: https://tools.ietf.org/html/rfc5545#section-3.8.1.1
*/
public class Attachment: Property {
    /// A URI pointing to the desired resource
    public var URI: String? {
        get {
            return self.propertyValue as? String
        } set {
            self.propertyValue = newValue
        }
    }
    
    /// Binary representation of an inline encoded document
    public var binary: NSData? {
        get {
            return self.propertyValue as? NSData
        }
    }
}
