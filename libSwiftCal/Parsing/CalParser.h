//
//  Parsing.h
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/16/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

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
