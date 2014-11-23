//
//  Organizer.swift
//  MyList
//
//  Created by Stefan Arambasich on 9/19/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

public typealias CalAddress = NSURL

public class Organizer: Property {
    public private(set) var URI: CalAddress!
}