//
//  Observer.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/11/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

@objc public protocol Observer: NSObjectProtocol {
    optional func didRefresh(model: CalendarObject, error e: NSError?)
}