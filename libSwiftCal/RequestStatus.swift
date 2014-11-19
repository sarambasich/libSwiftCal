//
//  RequestStatus.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/14/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

typealias StatusReturnType = (Int, Int?, Int?)

public struct RequestStatus {
//    public enum StatusReturnCode: StatusReturnType {
//        case PreliminarySuccess = 100
//        case Successful = 200
//        case ClientError = 300
//        case SchedulingError = 400
//    }
    
    public private(set) var status: (Int, Int, Int)?
    public private(set) var statusStr: String?
}