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
                let invalidSecondCount = "YY"
                _ = try BerlinClock(seconds: invalidSecondCount, singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
            }
        }
        
        @Test("Throws invalid character")
        func InvalidSecondCharacter() {
            #expect(throws: BerlinClock.Error.seconds(.invalidCharacters)) {
                let invalidSecondCharacter = "Z"
                _ = try BerlinClock(seconds: invalidSecondCharacter, singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
            }
        }
    }
    
    @Suite("Minutes init")
    struct MinutesTests {
        @Test("Throws invalid count")
        func InvalidSingleMinuteCount() {
            #expect(throws: BerlinClock.Error.seconds(.invalidCount)) {
                let invalidMinuteCount = "YY"
                _ = try BerlinClock(seconds: "Y", singleMinute: invalidMinuteCount, fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
            }
        }
        
        @Test("Throws invalid character")
        func InvalidSingleMinuteCharacter() {
            #expect(throws: BerlinClock.Error.seconds(.invalidCharacters)) {
                let invalidMinuteCharacter = "ZZZZ"
                _ = try BerlinClock(seconds: "Y", singleMinute: invalidMinuteCharacter, fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
            }
        }
    }
}
