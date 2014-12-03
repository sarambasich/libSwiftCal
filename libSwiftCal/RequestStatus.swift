//
//  RequestStatus.swift
//  libSwiftCal
//
//  Created by Stefan Arambasich on 10/14/14.
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
    Defines the status codes returned for a scheduling request.

    - PreliminarySuccess: Preliminary success.  This class of status code
        indicates that the request has been initially processed but that
        completion is pending.

    - Successful: Successful.  This class of status code indicates that
        the request was completed successfully.  However, the
        exact status code can indicate that a fallback has been
        taken.

    - ClientError: Client Error.  This class of status code indicates that
        the request was not successful.  The error is the result
        of either a syntax or a semantic error in the client-
        formatted request.  Request should not be retried until
        the condition in the request is corrected.

    - SchedulingError: Scheduling Error.  This class of status code
        indicates that the request was not successful.  Some sort of error
        occurred within the calendaring and scheduling service,
        not directly related to the request itself.
*/
public struct RequestStatus {
    public enum StatusReturnCode: Int {
        case PreliminarySuccess = 100
        case Successful = 200
        case ClientError = 300
        case SchedulingError = 400
    }
    
    /// The status as an integer
    public var status: Int!
    
    /// The status as a string
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