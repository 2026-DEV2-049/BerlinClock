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
    }
}
