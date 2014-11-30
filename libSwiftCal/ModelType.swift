//
//  ModelType.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/29/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

@objc public protocol ModelType: NSObjectProtocol {
    optional func create(completion: (e: NSError?) -> Void)
    optional func refresh(completion: (e: NSError?) -> Void)
    optional func update(newVersion: ModelType, completion: (e: NSError?) -> Void)
    optional func delete_(completion: (e: NSError?) -> Void)
}


/*

===

func create(completion: (e: NSError?) -> Void) {

}

func refresh(completion: (e: NSError?) -> Void) {

}

func update(newVersion: LocqusModel, completion: (e: NSError?) -> Void) {

}

func delete_(completion: (e: NSError?) -> Void) {

}

*/