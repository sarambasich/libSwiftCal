
//  Parsing.m
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

#import "CalParser.h"
#import "iCalParser.h"
#import "PKAssembly.h"
#import "PKToken.h"
#import "iCalendarElements.h"

#import "NSString+CalParser.h"

/**
    Takes an input string and converts it to a more concrete type,
    such as an NSString, an NSDate, a double, or an int. If no
    suitable datatype is found, returns the same string.
 
    @param str The string to convert to a data type.
 
    @return The typed version of the input.
 */
id toTypeFromString(NSString * str) {
    id result = str;
    NSInteger anInt;
    double aDouble;
    
    NSDate * date;
    NSDateFormatter * formatter = [NSDateFormatter new];
    NSMutableCharacterSet * dateCharSet = [NSMutableCharacterSet new];
    [dateCharSet formUnionWithCharacterSet:[NSCharacterSet characterSetWithCharactersInString:@"1234567890TZ"]];
    
    NSScanner * scanner = [NSScanner scannerWithString:str];
    if ([str rangeOfCharacterFromSet:[dateCharSet invertedSet]].location == NSNotFound &&
        str.length >= 8) {
        NSArray * dateFormats = @[@"yyyyLLdd'T'HHmmssZ", @"yyyyLLdd'T'HHmmss", @"yyyyLLdd", @"yyyyLLdd'T'HHmmss'Z'"];
        
        formatter.timeZone = [str containsString:@""] ? [NSTimeZone timeZoneForSecondsFromGMT:0] : [NSTimeZone systemTimeZone];
        
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
@synthesize values;

- (id) init {
    self = [super init];
    
    if (self) {
        values = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSString *) debugDescription {
    return [NSString stringWithFormat:@"<Param(%@): %@>", key, values];
}

- (NSDictionary *) toDictionary {
    return @{@"param_key": key,
             @"param_value": values,
             };
}

@end

@interface CalParser ()

- (PropertyMatch *) matchProperty:(PKParser *) parser assembly:(PKAssembly *) assembly;

- (BOOL) isControlCharacter:(char) c;

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
    id res = [self.parser parseString:input error:outErr];
    return res;
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

- (void) parser:(PKParser *) parser didMatchRrule:(PKAssembly *) assembly {
    PropertyMatch * m = [self matchProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchRrule:)]) {
        [self.delegate parser:m.key didMatchRrule:m];
    }
}

- (void) parser:(PKParser *)parser willMatchRdate:(PKAssembly *) assembly {
    if ([self.delegate respondsToSelector:@selector(parser:willMatchRdate:)]) {
        [self.delegate parser:parser.debugDescription willMatchRdate:[assembly debugDescription]];
    }
}

- (void) parser:(PKParser *)parser didMatchDurvalue:(PKAssembly *) assembly {
    PropertyMatch * m = [self matchProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchDurvalue:)]) {
        [self.delegate parser:m.key didMatchDurvalue:m];
    }
}


- (void) parser:(PKParser *) parser didMatchRdate:(PKAssembly *) assembly {
    PropertyMatch * m = [self matchProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchRdate:)]) {
        [self.delegate parser:m.key didMatchRdate:m];
    }
}

- (void) parser:(PKParser *)parser willMatchExdate:(PKAssembly *)assembly {
    if ([self.delegate respondsToSelector:@selector(parser:willMatchExdate:)]) {
        [self.delegate parser:parser.debugDescription willMatchExdate:assembly.debugDescription];
    }
}

- (void) parser:(PKParser *)parser didMatchExdate:(PKAssembly *)assembly {
    PropertyMatch * m = [self matchProperty:parser assembly:assembly];
    if ([self.delegate respondsToSelector:@selector(parser:didMatchExdate:)]) {
        [self.delegate parser:m.key didMatchExdate:m];
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
    NSUInteger stackCursor = assembly.stack.count - 1;
    
    // 1.) Find PROPERTY in stack - go back first, then progress forward
    BOOL isPropName = NO;
    BOOL previousLF = NO;
    BOOL previousCR = NO;
    while (!(isPropName && previousLF && previousCR)) {
        stackCursor--;
        isPropName = [[assembly.stack[stackCursor] stringValue] isPropertyName];
        previousLF = [assembly.stack[stackCursor - 1] tokenKind] == ICALPARSER_TOKEN_KIND__X0A;
        previousCR = [assembly.stack[stackCursor - 2] tokenKind] == ICALPARSER_TOKEN_KIND__X0D;
    }
    
    // 2.) So now we're where the PROPERTY starts. Let's get the property name.
    PKToken * tok = assembly.stack[stackCursor];
    result.key = [tok stringValue];
    
    tok = assembly.stack[++stackCursor];
    
    BOOL isColon = [[tok stringValue] isEqualToString:kCOLON];
    while (!isColon) {
        BOOL isSemiColon = [[tok stringValue] isEqualToString:kSEMICOLON];
        if (isSemiColon) {
            // 3.) If there are any parameters, match those
            ParameterMatch * pm = [ParameterMatch new];
            NSUInteger pNameStartPos = [assembly.stack[stackCursor + 1] offset];
            
            // Advance to get parameter name
            BOOL isEquals = [[tok stringValue] isEqualToString:kEQUALS];
            while (!isEquals) {
                stackCursor++;
                tok = assembly.stack[stackCursor];
                isEquals = [[tok stringValue] isEqualToString:kEQUALS];
            }
            
            NSString * paramNameStr = [self.parser.tokenizer.string substringWithRange:NSMakeRange(pNameStartPos, tok.offset - pNameStartPos)];
            pm.key = paramNameStr;
            
            stackCursor++;
            
            NSUInteger paramValStartPos = [assembly.stack[stackCursor] offset];
            
            // Advance to get parameter value(s)
            BOOL isColon = NO;
            BOOL isSemiColon = NO;
            while (!(isColon || isSemiColon)) {
                if ([[tok stringValue] isEqualToString:kCOMMA]) {
                    NSString * paramValStr = [self.parser.tokenizer.string substringWithRange:NSMakeRange(paramValStartPos, tok.offset - paramValStartPos)];
                    id paramVal = toTypeFromString(paramValStr);
                    [pm.values addObject:paramVal];
                    
                    paramValStartPos = [assembly.stack[++stackCursor] offset];
                }
                
                stackCursor++;
                tok = assembly.stack[stackCursor];
                isColon = [[tok stringValue] isEqualToString:kCOLON];
                isSemiColon = [[tok stringValue] isEqualToString:kSEMICOLON];
            }
            
            NSString * paramValStr = [self.parser.tokenizer.string substringWithRange:NSMakeRange(paramValStartPos, tok.offset - paramValStartPos)];
            id paramVal = toTypeFromString(paramValStr);
            [pm.values addObject:paramVal];
            
            [result.params addObject:pm];
        }
        
        tok = assembly.stack[stackCursor];
        isColon = [[tok stringValue] isEqualToString:kCOLON];
    }
    
    // 4.) Get property's value now
    NSUInteger propertyValStartPos = [assembly.stack[++stackCursor] offset];
    
    BOOL escapedChar = NO;
    BOOL controlChar = NO;
    BOOL crlf = NO;
    // Advance to get prop value
    while (!(escapedChar || controlChar || crlf) && stackCursor < assembly.stack.count - 1) {
        stackCursor++;
        PKToken * tok = assembly.stack[stackCursor];
        
        escapedChar = [[tok stringValue] isEqualToString:kBACKSLASH] && [self isEscapedCharacter:[[assembly.stack[stackCursor + 1] stringValue] characterAtIndex:0]];
        controlChar = [self isControlCharacter:[[tok stringValue] characterAtIndex:0]];
        crlf = [[tok stringValue] isEqualToString:kCR] && [[assembly.stack[stackCursor + 1] stringValue] isEqualToString:kLF];
    }
    
    NSString * propValStr = [self.parser.tokenizer.string substringWithRange:NSMakeRange(propertyValStartPos, [assembly.stack[stackCursor] offset] - propertyValStartPos)];
    result.value = toTypeFromString(propValStr);
    
    return result;
}

- (BOOL) isEscapedCharacter:(char) c {
    BOOL result = NO;
    for (int i = 0; i < 5; i++) {
        char ch = escapedChars[i];
        result = ch == c;
    }
    
    return result;
}

- (BOOL) isControlCharacter:(char) c {
    BOOL result = NO;
    for (int i = 0; i < 32; i++) {
        char ch = controlChars[i];
        result = ch == c;
    }
    
    return result;
}

@end
