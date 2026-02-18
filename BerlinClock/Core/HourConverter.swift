//
//  HourConverter.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Foundation

/// Acceptance Criteria
/// Given I have started the converter
/// When I enter $time
/// Then $row is returned for the single hours row
/// 00:00:00    OOOO
/// 23:59:59    RRRO
/// 02:04:00    RROO
/// 08:23:00    RRRO
/// 14:35:00    RRRR
enum HourConverter {
    static func convert(_ hours: Int) -> String {
        let max = 4
        let count = hours % 5
        return String(repeating: "R", count: count) + String(repeating: "O", count: max - count)
    }
}
