//
//  iCalendarElements.m
//  libSwiftCal
//
//  Created by Stefan Arambasich on 11/22/14.
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

#import "iCalendarElements.h"

const NSUInteger kPriorityLow = 9;
const NSUInteger kPriorityNormal = 5;
const NSUInteger kPriorityHigh = 1;

NSString * const kBEGIN = @"BEGIN";
NSString * const kEND = @"END";

NSString * const kCRLF = @"\r\n";
NSString * const kDOUBLE_QUOTE = @"\"";
NSString * const kSEMICOLON = @";";
NSString * const kCOLON = @":";
NSString * const kBACKSLASH = @"\\";
NSString * const kCOMMA = @",";
NSString * const kEQUALS = @"=";

NSString * const kVCALENDAR = @"VCALENDAR";
NSString * const kVEVENT = @"VEVENT";
NSString * const kVTODO = @"VTODO";
NSString * const kVJOURNAL = @"VJOURNAL";
NSString * const kVFREEBUSY = @"VFREEBUSY";
NSString * const kVTIMEZONE = @"VTIMEZONE";
NSString * const kVALARM = @"VALARM";
NSString * const kSTANDARD = @"STANDARD";
NSString * const kDAYLIGHT = @"DAYLIGHT";
NSString * const kCALSCALE = @"CALSCALE";
NSString * const kMETHOD = @"METHOD";
NSString * const kPRODID = @"PRODID";
NSString * const kVERSION = @"VERSION";
NSString * const kATTACH = @"ATTACH";
NSString * const kCATEGORIES = @"CATEGORIES";
NSString * const kCLASS = @"CLASS";
NSString * const kCOMMENT = @"COMMENT";
NSString * const kDESCRIPTION = @"DESCRIPTION";
NSString * const kGEO = @"GEO";
NSString * const kLOCATION = @"LOCATION";
NSString * const kPERCENT_COMPLETE = @"PERCENT-COMPLETE";
NSString * const kPRIORITY = @"PRIORITY";
NSString * const kRESOURCES = @"RESOURCES";
NSString * const kSTATUS = @"STATUS";
NSString * const kSUMMARY = @"SUMMARY";
NSString * const kCOMPLETED = @"COMPLETED";
NSString * const kDTEND = @"DTEND";
NSString * const kDUE = @"DUE";
NSString * const kDTSTART = @"DTSTART";
NSString * const kDURATION = @"DURATION";
NSString * const kFREEBUSY = @"FREEBUSY";
NSString * const kTRANSP = @"TRANSP";
NSString * const kTZID = @"TZID";
NSString * const kTZNAME = @"TZNAME";
NSString * const kTZOFFSETFROM = @"TZOFFSETFROM";
NSString * const kTZOFFSETTO = @"TZOFFSETTO";
NSString * const kTZURL = @"TZURL";
NSString * const kATTENDEE = @"ATTENDEE";
NSString * const kCONTACT = @"CONTACT";
NSString * const kORGANIZER = @"ORGANIZER";
NSString * const kRECURRENCE_ID = @"RECURRENCE-ID";
NSString * const kRELATED_TO = @"RELATED-TO";
NSString * const kURL = @"URL";
NSString * const kUID = @"UID";
NSString * const kEXDATE = @"EXDATE";
NSString * const kRDATE = @"RDATE";
NSString * const kRRULE = @"RRULE";
NSString * const kACTION = @"ACTION";
NSString * const kREPEAT = @"REPEAT";
NSString * const kTRIGGER = @"TRIGGER";
NSString * const kCREATED = @"CREATED";
NSString * const kDTSTAMP = @"DTSTAMP";
NSString * const kLAST_MODIFIED = @"LAST-MODIFIED";
NSString * const kSEQUENCE = @"SEQUENCE";
NSString * const kREQUEST_STATUS = @"REQUEST-STATUS";
NSString * const kALTREP = @"ALTREP";
NSString * const kCN = @"CN";
NSString * const kCUTYPE = @"CUTYPE";
NSString * const kDELEGATED_FROM = @"DELEGATED-FROM";
NSString * const kDELEGATED_TO = @"DELEGATED-TO";
NSString * const kDIR = @"DIR";
NSString * const kENCODING = @"ENCODING";
NSString * const kFMTTYPE = @"FMTTYPE";
NSString * const kFBTYPE = @"FBTYPE";
NSString * const kLANGUAGE = @"LANGUAGE";
NSString * const kMEMBER = @"MEMBER";
NSString * const kPARTSTAT = @"PARTSTAT";
NSString * const kRANGE = @"RANGE";
NSString * const kRELATED = @"RELATED";
NSString * const kRELTYPE = @"RELTYPE";
NSString * const kROLE = @"ROLE";
NSString * const kRSVP = @"RSVP";
NSString * const kSENT_BY = @"SENT-BY";
NSString * const kVALUE = @"VALUE";
NSString * const kBINARY = @"BINARY";
NSString * const kBOOLEAN = @"BOOLEAN";
NSString * const kCAL_ADDRESS = @"CAL-ADDRESS";
NSString * const kDATE = @"DATE";
NSString * const kDATE_TIME = @"DATE-TIME";
NSString * const kFLOAT = @"FLOAT";
NSString * const kINTEGER = @"INTEGER";
NSString * const kPERIOD = @"PERIOD";
NSString * const kRECUR = @"RECUR";
NSString * const kTEXT = @"TEXT";
NSString * const kTIME = @"TIME";
NSString * const kURI = @"URI";
NSString * const kUTC_OFFSET = @"UTC-OFFSET";
NSString * const kINDIVIDUAL = @"INDIVIDUAL";
NSString * const kGROUP = @"GROUP";
NSString * const kRESOURCE = @"RESOURCE";
NSString * const kROOM = @"ROOM";
NSString * const kUNKNOWN = @"UNKNOWN";
NSString * const kFREE = @"FREE";
NSString * const kBUSY = @"BUSY";
NSString * const kBUSY_UNAVAILABLE = @"BUSY-UNAVAILABLE";
NSString * const kBUSY_TENTATIVE = @"BUSY-TENTATIVE";
NSString * const kNEEDS_ACTION = @"NEEDS-ACTION";
NSString * const kACCEPTED = @"ACCEPTED";
NSString * const kDECLINED = @"DECLINED";
NSString * const kTENTATIVE = @"TENTATIVE";
NSString * const kDELEGATED = @"DELEGATED";
NSString * const kIN_PROCESS = @"IN-PROCESS";
NSString * const kCHILD = @"CHILD";
NSString * const kPARENT = @"PARENT";
NSString * const kSIBLING = @"SIBLING";
NSString * const kCHAIR = @"CHAIR";
NSString * const kREQ_PARTICIPANT = @"REQ-PARTICIPANT";
NSString * const kOPT_PARTICIPANT = @"OPT-PARTICIPANT";
NSString * const kNON_PARTICIPANT = @"NON-PARTICIPANT";
NSString * const kAUDIO = @"AUDIO";
NSString * const kDISPLAY = @"DISPLAY";
NSString * const kEMAIL = @"EMAIL";
NSString * const kPROCEDURE = @"PROCEDURE";
NSString * const kPUBLIC = @"PUBLIC";
NSString * const kPRIVATE = @"PRIVATE";
NSString * const kCONFIDENTIAL = @"CONFIDENTIAL";
