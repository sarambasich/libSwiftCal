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

- (void) parser:(NSString *) parserStr didMatchTodoc:(NSString *) assemblyStr;

@end

@interface CalParser : NSObject

- (id) initWithDelegate:(id) delegate;

- (id) parseString:(NSString *)input error:(NSError **) outErr;

- (void) parser:(PKParser *) parser didMatchTodoc:(PKAssembly *) assembly;

@end
