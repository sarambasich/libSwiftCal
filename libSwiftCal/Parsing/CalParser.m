//
//  Parsing.m
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/16/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

#import "CalParser.h"
#import "iCalParser.h"
#import "PKAssembly.h"

@interface CalParser ()

@property (atomic, strong, readwrite) iCalParser * parser;
@property (atomic, weak, readwrite) id delegate;

@end

@implementation CalParser

- (id) initWithDelegate:(id) delegate {
    self = [super init];
    
    if (self) {
        self.parser = [[iCalParser alloc] initWithDelegate:self];
        self.delegate = delegate;
    }
    
    return self;
}

- (id) parseString:(NSString *)input error:(NSError **)outErr {
    return [self.parser parseString:input error:outErr];
}

- (void) parser:(PKParser *) parser willMatchTodoc:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:willMatchTodoc:)]) {
        [self.delegate parser:@"" willMatchTodoc:@""];
    }
}

- (void) parser:(PKParser *) parser didMatchTodoprop:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchTodoprop:)]) {
        [self.delegate parser:@"" didMatchTodoprop:@""];
    }
}

- (void) parser:(PKParser *)parser didMatchCalprops:(PKAssembly *)assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchCalprops:)]) {
        [self.delegate parser:@"" didMatchCalprops:@""];
    }
}

- (void) parser:(PKParser *) parser didMatchSummary:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchSummary:)]) {
        [self.delegate parser:@"" didMatchSummary:@""];
    }
}

//- (void) parser:(PKParser *) parser didMatchTodoc:(PKAssembly *) assembly {
//    if ([self.delegate respondsToSelector:@selector(parser:didMatchTodoc:)]) {
//        [self.delegate parser:parser.debugDescription didMatchTodoc:[assembly debugDescription]];
//    }
//}

@end
