//
//  HourConverter.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Foundation

/// Acceptance Criteria
/// The upper row represents 5 hour blocks and is made up of 4 red lamps.
/// The lower row represents 1 hour blocks and is also made up of 4 red lamps.
enum HourConverter {
    /// Acceptance Criteria
    /// Given I have started the converter
    /// When I enter $time
    /// Then $row is returned for the single hours row
    /// 00:00:00    OOOO
    /// 23:59:59    RRRO
    /// 02:04:00    RROO
    /// 08:23:00    RRRO
    /// 14:35:00    RRRR
    static func singleHourString(from hours: Int) -> String {
        createString(from: hours % 5)
    }
    
    /// Acceptance Criteria
    /// Given I have started the converter
    /// When I enter $time
    /// Then $row is returned for the five hours row
    /// 00:00:00    OOOO
    /// 23:59:59    RRRR
    /// 02:04:00    OOOO
    /// 08:23:00    ROOO
    /// 16:35:00    RRRO
    static func fiveHourString(from hours: Int) -> String {
        createString(from: hours / 5)
    }
    
    private static func createString(from count: Int) -> String {
        let max = 4
        return String(repeating: "R", count: count) + String(repeating: "O", count: max - count)
    }
}
