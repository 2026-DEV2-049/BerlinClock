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
        func outOfBound() throws {
            #expect(throws: DigitalClock.Error.seconds(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: 0, seconds: 60)
            }
        }
    }
    
    @Suite("Minutes init")
    struct MinutesTests {
        @Test("Throws OutOfBondError with minutes > 59")
        func outOfBound() throws {
            #expect(throws: DigitalClock.Error.minutes(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: 0, seconds: 60)
            }
        }
    }
    
    @Suite("Hours init")
    struct HoursTests {
        @Test("Throws OutOfBondError with hours > 24")
        func outOfBound() throws {
            #expect(throws: DigitalClock.Error.hours(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: 0, seconds: 60)
            }
        }
    }
}
