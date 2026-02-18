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

    @Test("Convert hours to string succeeds when hour is 00")
    func zeroHourForSingleHours() {
        let result = HourConverter.convert(0)
        print(result)
        #expect(result == "0000")
    }

}
