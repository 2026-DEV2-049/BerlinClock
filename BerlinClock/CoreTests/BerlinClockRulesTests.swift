//
//  CoreTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Testing
import Foundation
@testable import Core

struct CoreTests {

    @Test("Convert date to BerlinClock fails")
    func firstTest() {
        let date = Date()
        let berlinClock = BerlinClockRules.berlinClock(from: date)
        #expect(berlinClock.seconds == "")
    }

}
