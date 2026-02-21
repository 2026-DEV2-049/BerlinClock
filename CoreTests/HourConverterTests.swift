//
//  HourConverterTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Testing
import Foundation
@testable import Core

struct HourConverterTests {

    @Suite("Single Hour")
    struct SingleHourTest {
        @Test("Convert hours to string succeeds when hour is 00")
        func zeroHour() {
            let result = HourConverter.singleHourString(from: 0)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when hour is 23")
        func twentyThreeHour() {
            let result = HourConverter.singleHourString(from: 23)
            #expect(result == "RRRO")
        }
        
        @Test("Convert hours to string succeeds when hour is 02")
        func twoHour() {
            let result = HourConverter.singleHourString(from: 2)
            #expect(result == "RROO")
        }
        
        @Test("Convert hours to string succeeds when hour is 08")
        func eightHour() {
            let result = HourConverter.singleHourString(from: 8)
            #expect(result == "RRRO")
        }
        
        @Test("Convert hours to string succeeds when hour is 14")
        func forteenHour() {
            let result = HourConverter.singleHourString(from: 14)
            #expect(result == "RRRR")
        }
    }
    
    @Suite("Five Hour")
    struct FiveHourTest {
        @Test("Convert hours to string succeeds when hour is 00")
        func zeroHour() {
            let result = HourConverter.fiveHourString(from: 0)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when hour is 23")
        func twentyThreeHour() {
            let result = HourConverter.fiveHourString(from: 23)
            #expect(result == "RRRR")
        }
        
        @Test("Convert hours to string succeeds when hour is 02")
        func twoHour() {
            let result = HourConverter.fiveHourString(from: 2)
            #expect(result == "OOOO")
        }
        
        @Test("Convert hours to string succeeds when hour is 08")
        func eightHour() {
            let result = HourConverter.fiveHourString(from: 8)
            #expect(result == "ROOO")
        }
        
        @Test("Convert hours to string succeeds when hour is 16")
        func forteenHour() {
            let result = HourConverter.fiveHourString(from: 16)
            #expect(result == "RRRO")
        }
    }
}
