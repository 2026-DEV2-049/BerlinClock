//
//  SecondsConverterTests.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Testing
import Foundation
@testable import Core

struct SecondsConverterTests {

    @Test("Convert seconds to string succeeds for even seconds")
    func conversionForEvenSeconds() {
        for i in stride(from: 0, to: 59, by: 2) {
            let result = SecondsConverter.convert(i)
            #expect(result == "Y")
        }
    }

    @Test("Convert seconds to string succeeds for odd seconds")
    func conversionForOddSeconds() {
        for i in stride(from: 1, to: 60, by: 2) {
            let result = SecondsConverter.convert(i)
            #expect(result == "O")
        }
    }
}
