//
//  MinuteConverterTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Testing
import Foundation
@testable import Core

struct MinuteConverterTests {

    @Suite("Single Minute")
    struct SingleMinuteTest {
        @Test("Convert hours to string succeeds when minute is 00")
        func zeroMinute() {
            let result = MinuteConverter.singleMinute(from: 0)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 59")
        func fiftyNineMinute() {
            let result = MinuteConverter.singleMinute(from: 59)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 32")
        func thirtyTwoMinute() {
            let result = MinuteConverter.singleMinute(from: 32)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 34")
        func thirtyFourMinute() {
            let result = MinuteConverter.singleMinute(from: 34)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 35")
        func thirtyFiveMinute() {
            let result = MinuteConverter.singleMinute(from: 35)
            #expect(result == "OROO")
        }
    }
}
