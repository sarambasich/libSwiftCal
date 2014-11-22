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
#import "PKToken.h"
#import "iCalendarElements.h"

#import "NSString+CalParser.h"

@interface CalParser ()

- (void) matchStringProperty:(PKParser *) parser assembly:(PKAssembly *) assembly propName:(NSString **) key propValue:(NSString **) value;

@property (atomic, strong, readwrite) iCalParser * parser;

@end

@implementation CalParser

@synthesize delegate;

- (id) initWithDelegate:(id) del {
    self = [super init];
    
    if (self) {
        self.parser = [[iCalParser alloc] initWithDelegate:self];
        self.delegate = del;
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
    NSString * k, * v;
    [self matchStringProperty:parser assembly:assembly propName:&k propValue:&v];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchTodoprop:)]) {
        [self.delegate parser:k didMatchTodoprop:v];
    }
}

- (void) parser:(PKParser *)parser didMatchCalprops:(PKAssembly *)assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchCalprops:)]) {
        [self.delegate parser:@"" didMatchCalprops:@""];
    }
}

- (void) parser:(PKParser *) parser didMatchIcalobject:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchIcalobject:)]) {
        [self.delegate parser:kVCALENDAR didMatchIcalobject:nil];
    }
}

- (void) parser:(PKParser *) parser didMatchTodoc:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchTodoc:)]) {
        [self.delegate parser:kVTODO didMatchTodoc:nil];
    }
}


- (void) matchStringProperty:(PKParser *) parser assembly:(PKAssembly *) assembly propName:(NSString **) key propValue:(NSString **) value {
    // TODO: Handle for property params
    NSUInteger stackEndPos = assembly.stack.count - 1 - 1,
    startPos, endPos;
    
    // 1.) Find beginning of PROPERTY in stack
    PKToken * endTok = assembly.stack[stackEndPos];
    
    // 2.) Mark where the end of the PROPERTY is
    endPos = endTok.offset;
    
    // 3.) Traverse the parse stack top down to find the beginning
    PKToken * curTok = assembly.stack[stackEndPos - 1];
    while (!([[assembly.stack[stackEndPos] stringValue] isEqualToString:@":"] && [[assembly.stack[stackEndPos - 1] stringValue] isiCalendarElement])) {
        curTok = assembly.stack[stackEndPos--];
    }
    
    *key = [assembly.stack[stackEndPos - 1] stringValue];
    
    // 4.) Mark where beginning is found to be
    startPos = curTok.offset;
    
    // 5.) Make substring from beginning to end
    *value = [self.parser.tokenizer.string substringWithRange:NSMakeRange(startPos, endPos - startPos)];
}

@end
