//
//  MinuteConverter.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Foundation

/// Acceptance Criteria
/// The upper row represents 5 minute blocks, and is made up of 11 lamps- every third lamp is red, the rest are yellow.
/// The bottom row represents 1 minute blocks, and is made up of 4 yellow lamps.
enum MinuteConverter {
    /// Acceptance Criteria
    /// Given I have started the converter
    /// When I enter $time
    /// Then $row is returned for the single minutes row
    /// 00:00:00    OOOO
    /// 23:59:59    YYYY
    /// 12:32:00    YYOO
    /// 12:34:00    YYYY
    /// 12:35:00    OOOO
    static func singleMinute(from minutes: Int) -> String {
        let max = 4
        let count = minutes % 5
        return String(repeating: "Y", count: count) + String(repeating: "O", count: max - count)
    }
}
