**This library is out of date and deprecated. It should not be used in projects but as an experimental learning tool.**

#libSwiftCal

libSwiftCal is a Cocoa Touch Framework iCalendar library for use in iOS and OS X projects. It consists of an iCalendar wrapper framework written in Swift and a parsing engine written in Objective-C.

It was created by [Stefan Arambasich](mailto:ArtisOracle@gmail.com) and is released under the [MIT License](http://opensource.org/licenses/MIT).

libSwiftCal is an implementation of [RFC 5545](https://tools.ietf.org/html/rfc5545).

##Overview
The goals of this framework are:

- Modern: use a modern, type-safe language (Swift)
- Dynamic: features a generic model (de)-serializer *([not yet](https://github.com/practicalswift/swift-compiler-crashes/blob/master/crashes/21266-generic-protocol-init.swift) fully generic)*
- KISS: simple, low-overhead usage by client applications

libSwiftCal's overall purpose is to make parsing and interacting with the iCalendar specification easy and native to your iOS or Mac applications.

##Parser
A main component of libSwiftCal is the iCalendar parser, which leverages [PEGKit](https://github.com/itod/pegkit) to parse .ics files. The parser traverses the input and performs relevant callbacks when a token in the grammar is matched. This library has abstracted this process for you, so parsing an .ics file is simple as:

```swift

let str: String = NSString(data: NSData(contentsOfFile: "AnInputFile.ics")!, encoding: NSUTF8StringEncoding)!
if let cal = Calendar(stringToParse: str, error: &someErrorObj) {
	// ...
}

```

##Status
**libSwiftCal is incomplete**. I built this framework with the intent to use it in a reminders app. Therefore, while the grammar will recognize any valid iCalendar file, there may not be a corresponding model in the framework yet because I've only implemented what's necessary for VTODO components.

As of the current version, only the following portions are implemented:

- Partial VCALENDAR object support
- VTODO components
- VALARM components
- All [component properties](https://tools.ietf.org/html/rfc5545#section-3.6.2) on a `todoc` (except [RRULE](https://tools.ietf.org/html/rfc5545#section-3.8.5.3))
- All [property parameters](https://tools.ietf.org/html/rfc5545#section-3.2)

The following need to be done - please contribute if you find this project beneficial and would like to collaborate on building this out further:
- VEVENT components, properties ([3.6.1](https://tools.ietf.org/html/rfc5545#section-3.6.1))
- VJOURNAL components, properties ([3.6.3](https://tools.ietf.org/html/rfc5545#section-3.6.3))
- VFREEBUSY components, properties ([3.6.4](https://tools.ietf.org/html/rfc5545#section-3.6.4))
- VTIMEZONE components, properties ([3.6.5](https://tools.ietf.org/html/rfc5545#section-3.6.5))

##Installation & Usage
**PLEASE NOTE** This is a Cocoa Touch Framework. Although it can be built against iOS 7, it comes with [some caveats](https://developer.apple.com/library/ios/documentation/General/Conceptual/ExtensibilityPG/ExtensionScenarios.html).

###Install
####CocoaPods
Looking to add CocoaPods support in the future

####Manual
- Link [PEGKit](https://github.com/itod/pegkit) as one of your project's dependencies
- Incorporate the the Xcode project into your project by combining the two in a workspace (the easiest way I've found to do this is drag the .xcodeproj on to the **top** of your project navigator above any existing files/projects)
- Add libSwiftCal as a linked library (in project > General and project > Build Phases)

###Usage
- Import the libSwiftCal framework into Swift code using `import libSwiftCal`

```swift
let d: [String : AnyObject] = ["VCALENDAR": ["VTODO": ["SUMMARY": "Pick up eggs."], ...], ...] 
let cal = Calendar(dictionary: d)
let r = cal.reminders.first

println(r.summary) // "Pick up eggs."

```

##Docs
**TODO**: It's there, but I need to find a good documentation generator. Xcode will use it in its code suggestions, though.

##License
libSwiftCal is released under the [MIT License](http://opensource.org/licenses/MIT).

Feel free to include it in any project. Just include this (and all of this lib's dependencies) copyright text.
