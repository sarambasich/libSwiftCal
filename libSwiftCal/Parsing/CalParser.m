
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

#import <libSwiftCal-Swift.h>

@interface PropertyMatch ()

@end

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

- (NSString *) debugDescription {
    return [NSString stringWithFormat:@"<Prop(%@): %@\nParams: %@>", key, value, [params debugDescription]];
}

- (NSDictionary *) toDictionary {
    NSMutableArray * paramsArr = [[NSMutableArray alloc] init];
    for (ParameterMatch * pm in params) {
        [paramsArr addObject:[pm toDictionary]];
    }
    
    return @{@"prop_key": key,
             @"prop_value": value,
             @"parameters": paramsArr
             };
}

@end

@implementation ParameterMatch

@synthesize key;
@synthesize value;

- (NSString *) debugDescription {
    return [NSString stringWithFormat:@"<Param(%@): %@>", key, value];
}

- (NSDictionary *) toDictionary {
    return @{@"param_key": key,
             @"param_value": value,
             };
}

@end

@interface CalParser ()

- (PropertyMatch *) matchProperty:(PKParser *) parser assembly:(PKAssembly *) assembly;

- (id) toTypeFromString:(NSString *) str;

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

- (void) parser:(PKParser *)parser willMatchIcalobject:(PKAssembly *)assembly {
    if ([self.delegate respondsToSelector:@selector(parser:willMatchIcalobject:)]) {
        [self.delegate parser:parser.debugDescription willMatchIcalobject:[assembly debugDescription]];
    }
}

- (void) parser:(PKParser *)parser didMatchCalprops:(PKAssembly *)assembly {
    PropertyMatch * m = [self matchProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchCalprops:)]) {
        [self.delegate parser:m.key didMatchCalprops:m];
    }
}

- (void) parser:(PKParser *) parser willMatchTodoc:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:willMatchTodoc:)]) {
        [self.delegate parser:parser.debugDescription willMatchTodoc:[assembly debugDescription]];
    }
}

- (void) parser:(PKParser *) parser didMatchTodoprop:(PKAssembly *) assembly {
    PropertyMatch * m = [self matchProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchTodoprop:)]) {
        [self.delegate parser:m.key didMatchTodoprop:m];
    }
}

- (void) parser:(PKParser *) parser willMatchAlarmc:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:willMatchAlarmc:)]) {
        [self.delegate parser:parser.debugDescription willMatchAlarmc:[assembly debugDescription]];
    }
}

- (void) parser:(PKParser *) parser didMatchAlarmprop:(PKAssembly *) assembly {
    PropertyMatch * m = [self matchProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:willMatchAlarmc:)]) {
        [self.delegate parser:m.key didMatchAlarmprop:m];
    }
}

- (void) parser:(PKParser *) parser didMatchAlarmc:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:willMatchAlarmc:)]) {
        [self.delegate parser:parser.debugDescription didMatchAlarmc:[assembly debugDescription]];
    }
}

- (void) parser:(PKParser *) parser didMatchTodoc:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchTodoc:)]) {
        [self.delegate parser:kVTODO didMatchTodoc:[assembly debugDescription]];
    }
}

- (void) parser:(PKParser *) parser didMatchIcalobject:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:didMatchIcalobject:)]) {
        [self.delegate parser:kVCALENDAR didMatchIcalobject:nil];
    }
}


- (PropertyMatch *) matchProperty:(PKParser *) parser assembly:(PKAssembly *) assembly {
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
    NSString * subStr = [self.parser.tokenizer.string substringWithRange:NSMakeRange(propStartPos, propEndPos - propStartPos)];
    result.value = [self toTypeFromString:subStr];
    
    // 6.) Handle for possible property parameters using same methodology above
    stackCursor--;
    paramEndPos = valTok.offset - 1;
    PKToken * paramTok = assembly.stack[stackCursor];
    if (![[assembly.stack[stackCursor] stringValue] isPropertyName]) {
        while (!([[assembly.stack[stackCursor] stringValue] isEqualToString:@";"] && [[assembly.stack[stackCursor - 1] stringValue] isPropertyName])) {
            while (![[assembly.stack[stackCursor] stringValue] isPropertyParameterName])  {
                paramTok = assembly.stack[stackCursor];
                stackCursor--;
            }
            
            paramStartPos = paramTok.offset + 1;
            
            ParameterMatch * pm = [ParameterMatch new];
            pm.key = [assembly.stack[stackCursor] stringValue];
            pm.value = [self toTypeFromString:[self.parser.tokenizer.string substringWithRange:NSMakeRange(paramStartPos, paramEndPos - paramStartPos)]];
            
            [result.params addObject:pm];
            stackCursor--;
            paramTok = assembly.stack[stackCursor];
            paramEndPos = paramTok.offset;
        }
        
        stackCursor--;
    }
    
    // 7.) Get the property's name
    result.key = [assembly.stack[stackCursor] stringValue];
    
    return result;
}

- (id) toTypeFromString:(NSString *) str {
    id result = str;
    NSInteger anInt;
    double aDouble;
    
    NSDate * date;
    NSDateFormatter * formatter = [NSDateFormatter new];
    formatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    NSMutableCharacterSet * dateCharSet = [[NSMutableCharacterSet alloc] init];
    [dateCharSet formUnionWithCharacterSet:[NSCharacterSet characterSetWithCharactersInString:@"1234567890TZ"]];

    NSScanner * scanner = [NSScanner scannerWithString:str];
    if ([str rangeOfCharacterFromSet:[dateCharSet invertedSet]].location == NSNotFound &&
        str.length >= 8) {
        NSArray * dateFormats = @[@"YYYYMMDD'T'HHmmssZ", @"YYYYMMDD'T'HHmmss", @"YYYYMMDD"];
        
        for (NSString * fmt in dateFormats) {
            NSError * err;
            formatter.dateFormat = fmt;
            if ([formatter getObjectValue:&date forString:str range:nil error:&err]) {
                result = (NSDate *) date;
                break;
            }
        }
    } else if ([scanner scanInteger:&anInt]) {
        if ([NSString stringWithFormat:@"%ld", (long) anInt].length == str.length) {
            result = [NSNumber numberWithInteger:anInt];
        }
    } else if ([scanner scanDouble:&aDouble]) {
        result = [NSNumber numberWithDouble:aDouble];
    }
    
    return result;
}

@end
