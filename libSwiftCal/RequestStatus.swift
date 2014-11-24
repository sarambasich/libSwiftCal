//
//  RequestStatus.swift
//  MyList
//
//  Created by Stefan Arambasich on 10/14/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

import Foundation

public struct RequestStatus {
    public enum StatusReturnCode: Int {
        case PreliminarySuccess = 100
        case Successful = 200
        case ClientError = 300
        case SchedulingError = 400
    }
    
    public private(set) var status: Int!
    public var statusStr: String? {
        get {
            var result: String?
            if let code = StatusReturnCode(rawValue: self.status) {
                switch code {
                    case .PreliminarySuccess:
                        result = NSLocalizedString("PreliminarySuccess", comment: "")
                        break
                    case .Successful:
                        result = NSLocalizedString("Successful", comment: "")
                        break
                    case .ClientError:
                        result = NSLocalizedString("ClientError", comment: "")
                        break
                    case .SchedulingError:
                        result = NSLocalizedString("SchedulingError", comment: "")
                        break
                    default:
                        break
                }
            }
            
            return result
        }
    }
}