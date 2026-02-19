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
        func multipleSeconds() {
            #expect(throws: BerlinClock.Error.seconds(.invalidCount)) {
                _ = try BerlinClock(seconds: "Y", singleMinute: "OOOO", fiveMinute: "OOOOOOOOOOO", singleHour: "0000", fiveHour: "0000")
            }
        }
    }
}
