//
//  JSON.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 12/12/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

public class JSON {
    public class func parse(data input: NSData, inout error e: NSError?) -> [String : AnyObject]? {
        return NSJSONSerialization.JSONObjectWithData(input, options: nil, error: &e) as? [String : AnyObject]
    }
    
    public class func make(input: AnyObject) -> NSData?  {
        var err: NSError?
        return NSJSONSerialization.dataWithJSONObject(input, options: nil, error: &err)
    }
}
