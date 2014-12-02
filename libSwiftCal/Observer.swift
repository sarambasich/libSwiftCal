//
//  Observer.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/11/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

/**
    Protocol describing an observer type.

    An observer type is an object that listens for ('observes') changes to
    a target model object. As soon as that object is modified, a callback
    is invoked on the observer.
*/
@objc public protocol Observer: NSObjectProtocol {
    /**
        A callback function invoked when the observed model has been refreshed.
        
        :param: model The model that has been refreshed.
        :param: e An NSError object describing an error if one has occurred.
            Defaults to nil.
    */
    optional func didRefresh(model: CalendarObject, error e: NSError?)
}