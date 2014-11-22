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

@implementation PropertyMatch

@synthesize key;
@synthesize value;
@synthesize params;

- (id) init {
    self = [super init];
    
    if (self) {
        params = [NSMutableArray new];
    }
    
    return self;
}

@end

@implementation ParameterMatch

@synthesize key;
@synthesize value;

@end

@interface CalParser ()

- (PropertyMatch *) matchStringProperty:(PKParser *) parser assembly:(PKAssembly *) assembly;

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
    PropertyMatch * m = [self matchStringProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchTodoprop:)]) {
        [self.delegate parser:m.key didMatchTodoprop:m.value];
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


- (PropertyMatch *) matchStringProperty:(PKParser *) parser assembly:(PKAssembly *) assembly {
    PropertyMatch * result = [[PropertyMatch alloc] init];
    NSUInteger stackCursor = assembly.stack.count - 1 - 1,
        propStartPos, propEndPos, paramStartPos, paramEndPos;
    
    // 1.) Find beginning of PROPERTY's value in stack
    PKToken * endTok = assembly.stack[stackCursor];
    
    // 2.) Mark where the end of the PROPERTY's value is
    propEndPos = endTok.offset;
    
    // 3.) Traverse the parse stack top down to find the beginning of the value
    PKToken * valTok = assembly.stack[stackCursor - 1];
    while (![[assembly.stack[stackCursor] stringValue] isEqualToString:@":"]) {
        valTok = assembly.stack[stackCursor--];
    }
    
    // 4.) Mark where beginning is found to be
    propStartPos = valTok.offset;
    
    // 5.) Make substring from beginning to end of value
    result.value = [self.parser.tokenizer.string substringWithRange:NSMakeRange(propStartPos, propEndPos - propStartPos)];
    
    // 6.) Handle for property parameters
    stackCursor--;
    paramEndPos = valTok.offset - 1;
    PKToken * paramTok = assembly.stack[stackCursor];
    while (!([[assembly.stack[stackCursor] stringValue] isEqualToString:@";"] && [[assembly.stack[stackCursor - 1] stringValue] isPropertyName])) {
        while (![[assembly.stack[stackCursor] stringValue] isPropertyParameterName])  {
            paramTok = assembly.stack[stackCursor];
            stackCursor--;
        }
        
        paramStartPos = paramTok.offset + 1;
        
        ParameterMatch * pm = [ParameterMatch new];
        pm.key = [assembly.stack[stackCursor] stringValue];
        pm.value = [self.parser.tokenizer.string substringWithRange:NSMakeRange(paramStartPos, paramEndPos - paramStartPos)];
        
        [result.params addObject:pm];
        stackCursor--;
        paramTok = assembly.stack[stackCursor];
        paramEndPos = paramTok.offset;
    }
    
    
    result.key = [assembly.stack[stackCursor - 1] stringValue];
    
    return result;
}

@end
