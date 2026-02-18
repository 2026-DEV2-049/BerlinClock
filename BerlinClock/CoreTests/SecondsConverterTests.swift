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

    @Test("Convert seconds to string succeeds for even seocnds")
    func conversionForEvenSeconds() {
        let result = SecondsConverter.convert(0)
        #expect(result == "Y")
    }

}
