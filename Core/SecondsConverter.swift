//
//  SecondsConverter.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Foundation

/// Acceptance Criteria
/// Given I have started the converter
/// When I enter $time
/// Then $lamp is returned for the seconds lamp
enum SecondsConverter {
    static func string(from seconds: Int) -> String {
        seconds % 2 == 0 ? "Y" : "O"
    }
}
