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

- (void) parser:(NSString *) key willMatchTodoc:(NSString *) value;

- (void) parser:(NSString *) key didMatchTodoprop:(NSString *) value;

- (void) parser:(NSString *) key didMatchCalprops:(NSString *) value;

- (void) parser:(NSString *) key didMatchSummary:(NSString *) value;

@end

@interface CalParser : NSObject

- (id) initWithDelegate:(id) delegate;

- (id) parseString:(NSString *)input error:(NSError **) outErr;

- (void) parser:(PKParser *) parser willMatchTodoc:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchTodoprop:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchCalprops:(PKAssembly *) assembly;

- (void) parser:(PKParser *) parser didMatchSummary:(PKAssembly *) assembly;

@end
