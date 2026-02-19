//
//  BerlinClock.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Foundation

public struct BerlinClock {
    public let seconds: String
    public let singleMinute: String
    public let fiveMinute: String
    public let singleHour: String
    public let fiveHour: String
    
    public var fullString: String {
        seconds + fiveHour + singleHour + fiveMinute + singleMinute
    }
    
    public init(seconds: String, singleMinute: String, fiveMinute: String, singleHour: String, fiveHour: String) {
        self.seconds = seconds
        self.singleMinute = singleMinute
        self.fiveMinute = fiveMinute
        self.singleHour = singleHour
        self.fiveHour = fiveHour
    }
}
