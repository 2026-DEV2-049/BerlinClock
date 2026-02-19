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
        @Test("Throws invalid length")
        func InvalidSecondLength() {
            #expect(throws: BerlinClock.Error.seconds(.invalidLength)) {
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
        @Suite("Single Minutes init")
        struct SingleMinutesTests {
            @Test("Throws invalid length")
            func InvalidSingleMinuteLength() {
                #expect(throws: BerlinClock.Error.singleMinute(.invalidLength)) {
                    let invalidMinuteLength = "YY"
                    _ = try BerlinClock(seconds: "Y", singleMinute: invalidMinuteLength, fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
                }
            }
            
            @Test("Throws invalid character")
            func InvalidSingleMinuteCharacter() {
                #expect(throws: BerlinClock.Error.singleMinute(.invalidCharacters)) {
                    let invalidMinuteCharacter = "ZZZZ"
                    _ = try BerlinClock(seconds: "Y", singleMinute: invalidMinuteCharacter, fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
                }
            }
        }
    }
}
