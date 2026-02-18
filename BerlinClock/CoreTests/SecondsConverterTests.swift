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

    @Test("Convert seconds to string")
    func conversionFails() {
        let result = SecondsConverter.convert(10)
        #expect(result == "")
    }

}
