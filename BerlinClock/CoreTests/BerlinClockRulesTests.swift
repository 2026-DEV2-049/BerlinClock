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

    @Test("Convert date to BerlinClock succeds with 00:00:00")
    func zeroTime() {
        let date = DateFactory.create(hour: 0, minute: 0, second: 0)
        let berlinClock = BerlinClockRules.berlinClock(from: date)
        #expect(berlinClock.seconds == "")
    }

}

enum DateFactory {
    static func create(hour: Int, minute: Int, second: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.hour = hour
        dateComponents.minute = minute
        dateComponents.second = second
        
        guard let date = Calendar.current.date(from: dateComponents) else { fatalError("couldn't create date")}
        return date
    }
}
