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
                _ = try BerlinClock(seconds: invalidSecondCount, singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "OOOO", fiveHour: "OOOO")
            }
        }
        
        @Test("Throws invalid character")
        func InvalidSecondCharacter() {
            #expect(throws: BerlinClock.Error.seconds(.invalidCharacters)) {
                let invalidSecondCharacter = "Z"
                _ = try BerlinClock(seconds: invalidSecondCharacter, singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "OOOO", fiveHour: "OOOO")
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
                    _ = try BerlinClock(seconds: "Y", singleMinute: invalidMinuteLength, fiveMinute: "OOOOOOOOOOO", singleHour: "OOOO", fiveHour: "OOOO")
                }
            }
            
            @Test("Throws invalid character")
            func InvalidSingleMinuteCharacter() {
                #expect(throws: BerlinClock.Error.singleMinute(.invalidCharacters)) {
                    let invalidMinuteCharacter = "ZZZZ"
                    _ = try BerlinClock(seconds: "Y", singleMinute: invalidMinuteCharacter, fiveMinute: "OOOOOOOOOOO", singleHour: "OOOO", fiveHour: "OOOO")
                }
            }
        }
        
        @Suite("Five Minutes init")
        struct FiveMinutesTests {
            @Test("Throws invalid length")
            func InvalidSingleMinuteLength() {
                #expect(throws: BerlinClock.Error.fiveMinute(.invalidLength)) {
                    let invalidMinuteLength = "YY"
                    _ = try BerlinClock(seconds: "Y", singleMinute: "OOOO", fiveMinute: invalidMinuteLength, singleHour: "OOOO", fiveHour: "OOOO")
                }
            }
            
            @Test("Throws invalid character")
            func InvalidFiveMinuteCharacter() {
                #expect(throws: BerlinClock.Error.fiveMinute(.invalidCharacters)) {
                    let invalidMinuteCharacter = "ZZZZZZZZZZZ"
                    _ = try BerlinClock(seconds: "Y", singleMinute: "OOOO", fiveMinute: invalidMinuteCharacter, singleHour: "OOOO", fiveHour: "OOOO")
                }
            }
        }
    }
    
    @Suite("Hours init")
    struct HourTests {
        @Suite("Single Hours init")
        struct SingleHourTests {
            @Test("Throws invalid length")
            func InvalidSingleHourLength() {
                #expect(throws: BerlinClock.Error.singleHour(.invalidLength)) {
                    let invalidHourLength = "YY"
                    _ = try BerlinClock(seconds: "Y", singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: invalidHourLength, fiveHour: "OOOO")
                }
            }
            
            @Test("Throws invalid character")
            func InvalidSingleHourCharacter() {
                #expect(throws: BerlinClock.Error.singleHour(.invalidCharacters)) {
                    let invalidHourCharacter = "ZZZZ"
                    _ = try BerlinClock(seconds: "Y", singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: invalidHourCharacter, fiveHour: "OOOO")
                }
            }
        }
        
        @Suite("Five hours init")
        struct FiveHourTests {
            @Test("Throws invalid length")
            func InvalidFiveHourLength() {
                #expect(throws: BerlinClock.Error.fiveHour(.invalidLength)) {
                    let invalidHourLength = "YY"
                    _ = try BerlinClock(seconds: "Y", singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "OOOO", fiveHour: invalidHourLength)
                }
            }
            
            @Test("Throws invalid character")
            func InvalidFiveHourCharacter() {
                #expect(throws: BerlinClock.Error.fiveHour(.invalidCharacters)) {
                    let invalidHourCharacter = "ZZZZ"
                    _ = try BerlinClock(seconds: "Y", singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "OOOO", fiveHour: invalidHourCharacter)
                }
            }
        }
    }
}
