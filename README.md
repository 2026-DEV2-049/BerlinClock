## BerlinClock
The Berlin Clock (Mengenlehreclock or Berlin Uhr) is a clock that tells the time using a series of illuminated coloured blocks.  
The top lamp blinks to show seconds- it is illuminated on even seconds and off on odd seconds.  
The next two rows represent hours. The upper row represents 5 hour blocks and is made up of 4 red lamps. The lower row represents 1 hour blocks and is also made up of 4 red lamps.  
The final two rows represent the minutes. The upper row represents 5 minute blocks, and is made up of 11 lamps- every third lamp is red, the rest are yellow. The bottom row represents 1 minute blocks, and is made up of 4 yellow lamps.

# This project covers two features:
Feature 1 - Converting Digital Time to Berlin Time  
Feature 2 - Converting Berlin Time to Digital Time

# Requirements
- iOS 17+ | macOS 15+ |
- Swift 5+
- Xcode 26+

# Running the project
- Open `BerlinClock.xcodeproj`
- Select target `BerlinClock`
- Run (CMD+R)

# Quick Start / Usage
Feature 1:
```
import Core

let seconds = 11
let minutes = 44
let hours = 13

//  Create a digitalClock
guard let digitalClock = try? DigitalClock(hours: hours, minutes: minutes, seconds: seconds) else { ... }

//  Convert the digitalClock to berlinClock
guard let berlinClock = try? BerlinClockConverter.berlinClock(from: digitalClock) else { ... }

print(berlinClock.fullString)
```

Feature 2:
```
import Core

//  Create a berlinClock
let berlinClock = try? BerlinClock(berlinClockString: "YRRROROOOYYRYYRYYRYOOOOO") else { ... }

//  Convert the berlinClock to digitalClock
let digitalClock = try? BerlinClockConverter.digitalClock(from: berlinClock) else { ... }

print("Seconds: ", digitalClock.seconds)
print("Minutes: ", digitalClock.minutes)
print("Hours: ", digitalClock.hours)
```

# Architecture:
One module named **Core** contains all the conversion's logic (Feature 1 + Feature 2).  
This **Core** module has a 100% test coverage which demonstrates all use-cases for features 1 and 2.  
In order to limit imports, only one file from **Main-application** consumes the **Core** module (which is the **BerlinClockView.Model**).  

# Limitation:
The convesion from Berlin Time to Digital TIme (feature 2) has some limitations:  
The seconds could not be translated correctly with the current input from the Berlin time.  
To solve this, additional information should be provided from the BerlinClock's seconds input.

# Current assumption to solve this limitation: 
Seconds from the converted Digital Time (Feature 2) will either be 0 or 1 second.

# Areas of improvement:
1. Add a convenience init to create a `DigitalClock` from a `Date` object.
2. Colors are currently hardcoded into each view. They could be defined and provided by a dedicated class.
3. Mapping strings to colors ("Y" -> .yellow) is currently done inside the **Main-application**. That mapping could be implemented inside the **Core** module.
4. All views are refreshed each second. This could be easily improved by updating viewModels by comparing oldValue against newValue.
5. Errors are not handled in case a `BerlinClock` conversion fails. Currently, if a conversion fails --> The current second is simply bypassed.
