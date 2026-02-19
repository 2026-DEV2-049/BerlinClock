//
//  DigitalClock.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import Foundation

public struct DigitalClock {
    public let hours: Int
    public let minutes: Int
    public let seconds: Int
    
    public init(hours: Int, minutes: Int, seconds: Int) {
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
    }
}
