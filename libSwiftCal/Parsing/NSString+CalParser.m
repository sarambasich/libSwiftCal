//
//  NSString+CalParser.m
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/22/14.
//  Copyright (c) 2014 Stefan Arambasich. All rights reserved.
//

#import "NSString+CalParser.h"
#import "iCalendarElements.h"

static NSArray * sortedElems;
static NSArray * sortedPropParams;
static NSArray * sortedProps;

NSArray * getSortediCalendarElements() {
    return @[kACCEPTED, kACTION, kALTREP, kATTACH, kATTENDEE, kAUDIO, kBINARY, kBOOLEAN, kBUSY, kBUSY_TENTATIVE, kBUSY_UNAVAILABLE, kCAL_ADDRESS, kCALSCALE, kCATEGORIES, kCHAIR, kCHILD, kCLASS, kCN, kCOMMENT, kCOMPLETED, kCONFIDENTIAL, kCONTACT, kCREATED, kCUTYPE, kDATE, kDATE_TIME, kDAYLIGHT, kDECLINED, kDELEGATED, kDELEGATED_FROM, kDELEGATED_TO, kDESCRIPTION, kDIR, kDISPLAY, kDTEND, kDTSTAMP, kDTSTART, kDUE, kDURATION, kEMAIL, kENCODING, kEXDATE, kFBTYPE, kFLOAT, kFMTTYPE, kFREE, kFREEBUSY, kGEO, kGROUP, kIN_PROCESS, kINDIVIDUAL, kINTEGER, kLANGUAGE, kLAST_MODIFIED, kLOCATION, kMEMBER, kMETHOD, kNEEDS_ACTION, kNON_PARTICIPANT, kOPT_PARTICIPANT, kORGANIZER, kPARENT, kPARTSTAT, kPERCENT_COMPLETE, kPERIOD, kPRIORITY, kPRIVATE, kPROCEDURE, kPRODID, kPUBLIC, kRANGE, kRDATE, kRECUR, kRECURRENCE_ID, kRELATED, kRELATED_TO, kRELTYPE, kREPEAT, kREQ_PARTICIPANT, kREQUEST_STATUS, kRESOURCE, kRESOURCES, kROLE, kROOM, kRRULE, kRSVP, kSENT_BY, kSEQUENCE, kSIBLING, kSTANDARD, kSTATUS, kSUMMARY, kTENTATIVE, kTEXT, kTIME, kTRANSP, kTRIGGER, kTZID, kTZNAME, kTZOFFSETFROM, kTZOFFSETTO, kTZURL, kUID, kUNKNOWN, kURI, kURL, kUTC_OFFSET, kVALARM, kVALUE, kVCALENDAR, kVERSION, kVEVENT, kVFREEBUSY, kVJOURNAL, kVTIMEZONE, kVTODO];
}

NSArray * getSortedPropertyNames() {
    return @[kACTION, kATTACH, kATTENDEE, kCATEGORIES, kCLASS, kCOMMENT, kCOMPLETED, kCONTACT, kCREATED, kDESCRIPTION, kDTEND, kDTSTAMP, kDTSTART, kDUE, kDURATION, kEXDATE, kFREEBUSY, kLAST_MODIFIED, kLOCATION, kORGANIZER, kPERCENT_COMPLETE, kPRIORITY, kRDATE, kRECURRENCE_ID, kRELATED_TO, kREPEAT, kRESOURCES, kRRULE, kSEQUENCE, kSTATUS, kSUMMARY, kTRANSP, kTRIGGER, kTZID, kTZNAME, kTZOFFSETFROM, kTZOFFSETTO, kTZURL, kUID, kURL];
}

NSArray * getSortedPropertyParameterNames() {
    return @[kALTREP, kCN, kCUTYPE, kDELEGATED_FROM, kDELEGATED_TO, kDIR, kENCODING, kFMTTYPE, kFBTYPE, kLANGUAGE, kMEMBER, kPARTSTAT, kRANGE, kRELATED, kRELTYPE, kROLE, kRSVP, kSENT_BY, kTZID, kVALUE];
}

@implementation NSString (CalParser)

- (BOOL) isiCalendarElement {
    if (sortedElems == nil) {
        sortedElems = getSortediCalendarElements();
    }
    
    NSString * selfValue = [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    NSUInteger idx = [sortedElems indexOfObject:selfValue
                                  inSortedRange:NSMakeRange(0, sortedElems.count)
                                        options:NSBinarySearchingFirstEqual
                                usingComparator:^NSComparisonResult(id obj1, id obj2) {
                                    return [obj1 compare:obj2];
                                }];
    
    return idx != NSNotFound;
}

- (BOOL) isPropertyName {
    if (sortedProps == nil) {
        sortedProps = getSortedPropertyNames();
    }
    
    NSString * selfValue = [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    NSUInteger idx = [sortedProps indexOfObject:selfValue
                                  inSortedRange:NSMakeRange(0, sortedProps.count)
                                        options:NSBinarySearchingFirstEqual
                                usingComparator:^NSComparisonResult(id obj1, id obj2) {
                                    return [obj1 compare:obj2];
                                }];
    
    return [self isXValue] || idx != NSNotFound;
}

- (BOOL) isPropertyParameterName {
    if (sortedPropParams == nil) {
        sortedPropParams = getSortedPropertyParameterNames();
    }
    
    NSString * selfValue = [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    NSUInteger idx = [sortedPropParams indexOfObject:selfValue
                                       inSortedRange:NSMakeRange(0, sortedPropParams.count)
                                             options:NSBinarySearchingFirstEqual
                                     usingComparator:^NSComparisonResult(id obj1, id obj2) {
                                         return [obj1 compare:obj2];
                                     }];
    
    return [self isXValue] || idx != NSNotFound;
}

- (BOOL) isXValue {
    NSString * selfValue = [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    NSMutableCharacterSet * valid = [NSMutableCharacterSet alphanumericCharacterSet];
    [valid formUnionWithCharacterSet:[NSCharacterSet characterSetWithCharactersInString:@"-"]];
    return [selfValue hasPrefix:@"X-"] && [selfValue rangeOfCharacterFromSet:[valid invertedSet]].location == NSNotFound;
}

@end
