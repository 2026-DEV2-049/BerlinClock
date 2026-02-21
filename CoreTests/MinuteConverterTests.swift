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
            let result = MinuteConverter.singleMinuteString(from: 0)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 59")
        func fiftyNineMinute() {
            let result = MinuteConverter.singleMinuteString(from: 59)
            #expect(result == "YYYY")
        }
        
        @Test("Convert hours to string succeeds when minute is 32")
        func thirtyTwoMinute() {
            let result = MinuteConverter.singleMinuteString(from: 32)
            #expect(result == "YYOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 34")
        func thirtyFourMinute() {
            let result = MinuteConverter.singleMinuteString(from: 34)
            #expect(result == "YYYY")
        }
        
        @Test("Convert hours to string succeeds when minute is 35")
        func thirtyFiveMinute() {
            let result = MinuteConverter.singleMinuteString(from: 35)
            #expect(result == "OOOO")
        }
    }
    
    @Suite("Five Minutes")
    struct FiveMinuteTest {
        @Test("Convert hours to string succeeds when minute is 00")
        func zeroMinute() {
            let result = MinuteConverter.fiveMinuteString(from: 0)
            #expect(result == "OOOOOOOOOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 59")
        func fiftyNineMinute() {
            let result = MinuteConverter.fiveMinuteString(from: 59)
            #expect(result == "YYRYYRYYRYY")
        }
        
        @Test("Convert hours to string succeeds when minute is 04")
        func fourMinute() {
            let result = MinuteConverter.fiveMinuteString(from: 4)
            #expect(result == "OOOOOOOOOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 23")
        func thirtyTwoMinute() {
            let result = MinuteConverter.fiveMinuteString(from: 23)
            #expect(result == "YYRYOOOOOOO")
        }
        
        @Test("Convert hours to string succeeds when minute is 35")
        func thirtyFiveMinute() {
            let result = MinuteConverter.fiveMinuteString(from: 35)
            #expect(result == "YYRYYRYOOOO")
        }
    }
}
