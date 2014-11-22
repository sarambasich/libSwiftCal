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

NSArray * getSortediCalendarElements() {
    return @[kACCEPTED, kACTION, kALTREP, kATTACH, kATTENDEE, kAUDIO, kBINARY, kBOOLEAN, kBUSY, kBUSY_TENTATIVE, kBUSY_UNAVAILABLE, kCAL_ADDRESS, kCALSCALE, kCATEGORIES, kCHAIR, kCHILD, kCLASS, kCN, kCOMMENT, kCOMPLETED, kCONFIDENTIAL, kCONTACT, kCREATED, kCUTYPE, kDATE, kDATE_TIME, kDAYLIGHT, kDECLINED, kDELEGATED, kDELEGATED_FROM, kDELEGATED_TO, kDESCRIPTION, kDIR, kDISPLAY, kDTEND, kDTSTAMP, kDTSTART, kDUE, kDURATION, kEMAIL, kENCODING, kEXDATE, kFBTYPE, kFLOAT, kFMTTYPE, kFREE, kFREEBUSY, kGEO, kGROUP, kIN_PROCESS, kINDIVIDUAL, kINTEGER, kLANGUAGE, kLAST_MODIFIED, kLOCATION, kMEMBER, kMETHOD, kNEEDS_ACTION, kNON_PARTICIPANT, kOPT_PARTICIPANT, kORGANIZER, kPARENT, kPARTSTAT, kPERCENT_COMPLETE, kPERIOD, kPRIORITY, kPRIVATE, kPROCEDURE, kPRODID, kPUBLIC, kRANGE, kRDATE, kRECUR, kRECURRENCE_ID, kRELATED, kRELATED_TO, kRELTYPE, kREPEAT, kREQ_PARTICIPANT, kREQUEST_STATUS, kRESOURCE, kRESOURCES, kROLE, kROOM, kRRULE, kRSVP, kSENT_BY, kSEQUENCE, kSIBLING, kSTANDARD, kSTATUS, kSUMMARY, kTENTATIVE, kTEXT, kTIME, kTRANSP, kTRIGGER, kTZID, kTZNAME, kTZOFFSETFROM, kTZOFFSETTO, kTZURL, kUID, kUNKNOWN, kURI, kURL, kUTC_OFFSET, kVALARM, kVALUE, kVCALENDAR, kVERSION, kVEVENT, kVFREEBUSY, kVJOURNAL, kVTIMEZONE, kVTODO];
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

@end
