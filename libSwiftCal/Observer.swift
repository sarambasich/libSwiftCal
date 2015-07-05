//
//  Observer.swift
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

/**
    Protocol describing an observer type.

    An observer type is an object that listens for ('observes') changes to
    a target model object. As soon as that object is modified, a callback
    is invoked on the observer.
*/
@objc public protocol Observer {
    /**
        A callback function invoked when the observed model has been changed.
        
        - parameter model: The model that has been changed.
        - parameter e: An `NSError` object describing an error if one has occurred or 
                    nil if nothing went wrong.
    */
    func notify(model: AnyObject, error e: NSError?)
}