//
//  Parsing.h
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/16/14.
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

#import <Foundation/Foundation.h>

id toTypeFromString(NSString * str);

@class PKParser;
@class PKAssembly;

/**
    Representation of a property match found by the iCalendar parser.
    Contains a key/value pair as well as an array of any property parameters.
 */
@interface PropertyMatch : NSObject

/** The property's key */
@property (strong, readwrite) NSString * key;
/** The property's parameter list */
@property (strong, readwrite) NSMutableArray * params;
/** The property's value */
@property (strong, readwrite) id value;

/**
     Returns a dictionary representation of this object.
     
     @return A dictionary of this object.
 */
- (NSDictionary *) toDictionary;

@end

/**
    Representation of a parameter match found by the iCalendar parser.
    Contains a key/value pair describing the parameter.
 */

@interface ParameterMatch : NSObject

/** The parameter's key */
@property (strong, readwrite) NSString * key;
/** The parameter's value */
@property (strong, readwrite) id value;


/**
     Returns a dictionary representation of this object.
     
     @return A dictionary of this object.
 */
- (NSDictionary *) toDictionary;

@end


@protocol ParserObserver <NSObject>

@optional

- (void) parser:(NSString *) key willMatchIcalobject:(NSString *) value;

- (void) parser:(NSString *) key didMatchCalprops:(PropertyMatch *) value;

- (void) parser:(NSString *) key willMatchTodoc:(NSString *) value;

- (void) parser:(NSString *) key didMatchTodoprop:(PropertyMatch *) value;

- (void) parser:(NSString *) key willMatchAlarmc:(NSString *) value;

- (void) parser:(NSString *) key didMatchAlarmprop:(PropertyMatch *) value;

- (void) parser:(NSString *) key didMatchAlarmc:(NSString *) value;

- (void) parser:(NSString *) key didMatchTodoc:(NSString *) value;

- (void) parser:(NSString *) key didMatchIcalobject:(NSString *) value;

@end


@interface CalParser : NSObject

@property (atomic, weak, readwrite) id delegate;

- (id) initWithDelegate:(id) del;

- (id) parseString:(NSString *)input error:(NSError **) outErr;

- (void) parser:(PKParser *) parser willMatchIcalobject:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchCalprops:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser willMatchTodoc:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchTodoprop:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser willMatchAlarmc:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchAlarmprop:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchAlarmc:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchTodoc:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchIcalobject:(PKAssembly *) assembly;

@end
