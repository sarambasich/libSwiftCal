//
//  Observable.swift
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
    Protocol describing an observable type.

    An observable type is one that reports changes to its state to other objects
    ('observers') who request to 'observe' this object. Used to separate model logic
    from UI logic, as the UI can listen and receive updates to this object immeidately
    without having to invoke a model's methods manually.
*/
public protocol Observable: NSObjectProtocol {
    /**
        Adds an observer to this object. The observer will receive a callback when
        this object is created, updated, deleted, or is otherwise modified in such
        a way that a listener would be interested in knowing of that change.
        
        - parameter o: The Observer that should listen for changes to this object.
    */
    func addObserver(o: Observer)
    
    /**
        Removes an observer from this object. The observer object will no longer
        receive updates when this model is modified.
        
        - parameter o: The Observer object to remove.
    */
    func removeObserver(o: Observer)
    
    /**
        Sends a notification to observers that this object has been changed with an
        optional error object to indicate a failure of an operation.
        
        - parameter e: An NSError object describing an error if one has occurred.
            Defaults to nil.
    */
    func notifyObservers(e: NSError?)
}