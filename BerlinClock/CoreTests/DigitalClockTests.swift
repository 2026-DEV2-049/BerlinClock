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
        @Test("Throws invalid length")
        func invalidLength() throws {
            #expect(throws: DigitalClock.Error.seconds(.outOfBond)) {
                _ = try DigitalClock(hours: 0, minutes: 0, seconds: 60)
            }
        }
    }
}
