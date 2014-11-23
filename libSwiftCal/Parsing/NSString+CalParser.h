//
//  NSString+CalParser.h
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/22/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

#import <Foundation/Foundation.h>

NSArray * getSortediCalendarElements();
NSArray * getSortedPropertyNames();
NSArray * getSortedPropertyParameterNames();

@interface NSString (CalParser)

- (BOOL) isiCalendarElement;

- (BOOL) isPropertyName;

- (BOOL) isPropertyParameterName;

@end
