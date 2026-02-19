//
//  DigitalClockTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import Testing
@testable import Core

struct DigitalClockTests {

    @Suite("Seconds init")
    struct SecondsTests {
        @Test("Throws OutOfBondError with seconds > 59")
        func outOfBound_Max() throws {
            #expect(throws: DigitalClock.Error.seconds(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: 0, seconds: 60)
            }
        }
        
        @Test("Throws OutOfBondError with seconds < 0")
        func outOfBound_negative() throws {
            #expect(throws: DigitalClock.Error.seconds(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: 0, seconds: -1)
            }
        }
    }
    
    @Suite("Minutes init")
    struct MinutesTests {
        @Test("Throws OutOfBondError with minutes > 59")
        func outOfBound_Max() throws {
            #expect(throws: DigitalClock.Error.minutes(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: 60, seconds: 0)
            }
        }
        
        @Test("Throws OutOfBondError with minutes < 0")
        func outOfBound_negative() throws {
            #expect(throws: DigitalClock.Error.minutes(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: -1, seconds: 0)
            }
        }
    }
    
    @Suite("Hours init")
    struct HoursTests {
        @Test("Throws OutOfBondError with hours > 24")
        func outOfBound_Max() throws {
            #expect(throws: DigitalClock.Error.hours(.outOfBond)) {
                _ = try DigitalClock(hours: 24, minutes: 0, seconds: 0)
            }
        }
        
        @Test("Throws OutOfBondError with hours < 0")
        func outOfBound_negative() throws {
            #expect(throws: DigitalClock.Error.hours(.outOfBond)) {
                _ = try DigitalClock(hours: -1, minutes: 0, seconds: 0)
            }
        }
    }
}
