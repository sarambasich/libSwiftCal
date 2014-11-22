//
//  Parsing.h
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/16/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PKParser;
@class PKAssembly;

@protocol ParserObserver <NSObject>

@optional

- (void) parser:(NSString *) key willMatchTodoc:(NSString *) value;

- (void) parser:(NSString *) key didMatchCalprops:(NSString *) value;

- (void) parser:(NSString *) key didMatchTodoprop:(NSString *) value;

- (void) parser:(NSString *) key didMatchTodoc:(NSString *) value;

- (void) parser:(NSString *) key didMatchIcalobject:(NSString *) value;

@end

@interface PropertyMatch : NSObject

@property (strong, readwrite) NSString * key;
@property (strong, readwrite) NSMutableArray * params;
@property (strong, readwrite) id value;

@end

@interface ParameterMatch : NSObject

@property (strong, readwrite) NSString * key;
@property (strong, readwrite) id value;

@end

@interface CalParser : NSObject

@property (atomic, weak, readwrite) id delegate;

- (id) initWithDelegate:(id) del;

- (id) parseString:(NSString *)input error:(NSError **) outErr;

- (void) parser:(PKParser *) parser willMatchTodoc:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchTodoprop:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchCalprops:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchIcalobject:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchTodoc:(PKAssembly *) assembly;

@end
