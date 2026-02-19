//
//  CoreTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Testing
@testable import Core

struct BerlinClockConverterTests {

    @Suite("DigitalClock -> BerlinClock")
    struct DigitalClockToBerlinClockTests {
        @Test("Conversion succeds with 00:00:00")
        func zeroTime() {
            let digitalClock = DigitalClock(hours: 0, minutes: 0, seconds: 0)
            let berlinClock = BerlinClockConverter.berlinClock(from: digitalClock)
            #expect(berlinClock.fullString == "YOOOOOOOOOOOOOOOOOOOOOOO")
        }

        @Test("Conversion succeeds with 23:59:59")
        func oneSecondBeforeMidnight() {
            let digitalClock = DigitalClock(hours: 23, minutes: 59, seconds: 59)
            let berlinClock = BerlinClockConverter.berlinClock(from: digitalClock)
            #expect(berlinClock.fullString == "ORRRRRRROYYRYYRYYRYYYYYY")
        }
        
        @Test("Conversion succeeds with 16:50:06")
        func fourPMFiftyMinutesAndSixSecond() {
            let digitalClock = DigitalClock(hours: 16, minutes: 50, seconds: 06)
            let berlinClock = BerlinClockConverter.berlinClock(from: digitalClock)
            #expect(berlinClock.fullString == "YRRROROOOYYRYYRYYRYOOOOO")
        }
        
        @Test("Conversion succeeds with 11:37:01")
        func elevenHoursThirtySevenMinutesAndOneSecond() {
            let digitalClock = DigitalClock(hours: 11, minutes: 37, seconds: 01)
            let berlinClock = BerlinClockConverter.berlinClock(from: digitalClock)
            #expect(berlinClock.fullString == "ORROOROOOYYRYYRYOOOOYYOO")
        }
    }
    
    @Suite("BerlinClock -> DigitalClock")
    struct BerlinClockToDigitalClockTests {
    }
}
