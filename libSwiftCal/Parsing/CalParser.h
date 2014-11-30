//
//  Parsing.h
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/16/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXPORT id toTypeFromString(NSString * str);

@class PKParser;
@class PKAssembly;

@interface PropertyMatch : NSObject

@property (strong, readwrite) NSString * key;
@property (strong, readwrite) NSMutableArray * params;
@property (strong, readwrite) id value;

- (NSDictionary *) toDictionary;

@end


@interface ParameterMatch : NSObject

@property (strong, readwrite) NSString * key;
@property (strong, readwrite) id value;

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
