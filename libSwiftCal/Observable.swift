//
//  Observable.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/11/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

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
        
        :param: o The Observer that should listen for changes to this object.
    */
    func addObserver(o: Observer)
    
    
    /**
        Removes an observer from this object. The observer object will no longer
        receive updates when this model is modified.
        
        :param: o The Observer object to remove.
    */
    func removeObserver(o: Observer)
    
    /**
        Sends a notification to observers that this object has been changed with an
        optional error object to indicate a failure of an operation.
        
        :param: e An NSError object describing an error if one has occurred.
        Defaults to nil.
    */
    func notifyObservers(e: NSError?)
}