//
//  BerlinClock.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Foundation

public struct BerlinClock {
    public let seconds: String
    public let singleMinutes: String
    public let fiveMinutes: String
    public let singleHours: String
    public let fiveHours: String
    
    public var fullString: String {
        seconds + fiveHours + singleHours + fiveMinutes + singleMinutes
    }
    
    init(seconds: String, singleMinutes: String, fiveMinutes: String, singleHours: String, fiveHours: String) {
        self.seconds = seconds
        self.singleMinutes = singleMinutes
        self.fiveMinutes = fiveMinutes
        self.singleHours = singleHours
        self.fiveHours = fiveHours
    }
}
