//
//  BerlinClockTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import Testing
@testable import Core

struct BerlinClockTests {

    @Suite("Seconds init")
    struct SecondsTests {
        @Test("Throws invalid count")
        func InvalidSecondCount() {
            #expect(throws: BerlinClock.Error.seconds(.invalidCount)) {
                let InvalidSecondCount = "YY"
                _ = try BerlinClock(seconds: InvalidSecondCount, singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
            }
        }
        
        @Test("Throws invalid character")
        func InvalidSecondCount() {
            #expect(throws: BerlinClock.Error.seconds(.invalidCount)) {
                let InvalidSecondCharacter = "XYZ"
                _ = try BerlinClock(seconds: InvalidSecondCount, singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
            }
        }
    }
}
