#libSwiftCal
======

libSwiftCal is a Cocoa Touch Framework iCalendar parser and wrapper written in Swift (and some Objective-C) for use in iOS and OS X projects. It was created by [Stefan Arambasich](mailto:ArtisOracle@gmail.com) and is released under the [MIT License](http://opensource.org/licenses/MIT).

libSwiftCal is written to conform to [RFC 5545](https://tools.ietf.org/html/rfc5545#section-3.8.6.2).

##Overview
The goals of this framework are:
- Modern: use a modern, type-safe language (Swift)
- Dynamic: features a generic model (de)-serializer
- Simple: lightweight, small footprint
- Easy: simple, low-overhead usage by client applications

libSwiftCal's overall purpose is to make parsing and interacting with the iCalendar specification easy and native to your iOS or Mac applications.

A main component of libSwiftCal is the iCalendar parser, which leverages PEGKit to parse .ics files. The parser performs relevant callbacks when a token in the grammar is matched. This library has abstracted this process for you, so parsing an .ics file is simple as:

```
    let str: String = NSString(data: NSData(contentsOfFile: "AnInputFile.ics")!, encoding: NSUTF8StringEncoding)!
    let completion = { (cal: Calendar) -> Void in println(cal.prodid.stringValue) }
    let cal = Calendar(stringToParse: str, completion: completion)

```


##License
libSwiftCal is released under the [MIT License](http://opensource.org/licenses/MIT).

Feel free to include it in any project. Just include this (and all of this lib's dependencies) copyright text.