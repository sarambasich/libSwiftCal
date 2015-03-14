//
//  CalendarType.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 10/11/14.
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
    Describes a type that can serializate its representation to a literal iCalendar
    string representation.
*/
@objc public protocol iCalendarSerializable: NSObjectProtocol {
    /**
        Serializes the receiver into its iCalendar format suitable for saving in 
        .ics files.
    
        :return: The string representation of the receiver.
    */
    func serializeToiCal() -> String
    /**
        Serializes the receiver into its iCalendar format suitable for saving in
        .ics files.
    
        :param: key When provided, adds this item as a value of a key separated by
                an equals "=" sign.
        
        :return: The key-value pair string representation of the receiver.
    */
    optional func serializeToiCalForKey(key: String) -> String
}

/**
    A calendar type is a calendar object that conforms to all
    of the required protocols.
*/
protocol CalendarType: NSObjectProtocol, NSCopying, NSCoding, Hashable, Equatable, iCalendarSerializable, Observable, Serializable { }