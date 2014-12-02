//
//  CalendarType.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/11/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

protocol CalendarType: NSObjectProtocol, NSCopying, NSCoding, Hashable, Equatable, Observable, Serializable {
    func serializeToiCal() -> String
}