//
//  CoreTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Testing
import Foundation
@testable import Core

struct BerlinClockConverterTests {

    @Test("Convert date to BerlinClock succeds with 00:00:00")
    func zeroTime() {
        let date = DateFactory.create(hour: 0, minute: 0, second: 0)
        let berlinClock = BerlinClockConverter.berlinClock(from: date)
        #expect(berlinClock.fullString == "YOOOOOOOOOOOOOOOOOOOOOOO")
    }

    @Test("Convert date to BerlinClock succeds with 23:59:59")
    func oneSecondBeforeMidnight() {
        let date = DateFactory.create(hour: 23, minute: 59, second: 59)
        let berlinClock = BerlinClockConverter.berlinClock(from: date)
        #expect(berlinClock.fullString == "ORRRRRRROYYRYYRYYRYYYYYY")
    }
    
    @Test("Convert date to BerlinClock succeds with 16:50:06")
    func fourPMFiftyMinutesAndSixSecond() {
        let date = DateFactory.create(hour: 16, minute: 50, second: 06)
        let berlinClock = BerlinClockConverter.berlinClock(from: date)
        #expect(berlinClock.fullString == "YRRROROOOYYRYYRYYRYOOOOO")
    }
    
    @Test("Convert date to BerlinClock succeds with 11:37:01")
    func elevenHoursThirtySevenMinutesAndOneSecond() {
        let date = DateFactory.create(hour: 11, minute: 37, second: 01)
        let berlinClock = BerlinClockConverter.berlinClock(from: date)
        #expect(berlinClock.fullString == "ORROOROOOYYRYYRYOOOOYYOO")
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
