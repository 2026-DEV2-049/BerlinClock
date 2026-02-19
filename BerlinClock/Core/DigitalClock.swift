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
    
    public enum Error: Swift.Error, Equatable {
        case seconds(Reason)
        case minutes(Reason)
        case hours(Reason)
        
        public enum Reason {
            case outOfBond
        }
    }
    
    /// This initializer validates the input values to ensure they form a valid time component.
    /// - Parameters:
    ///   - hours: The number of hours in 24 hours format. Values outside the range range 0-24 throws
    ///   - minutes: The number of minutes. Values outside the range range 0-60 throws
    ///   - seconds: The number of seconds. Values outside the range range 0-60 throws
    public init(hours: Int, minutes: Int, seconds: Int) throws {
        guard hours < 24 && hours >= 0 else { throw Error.hours(.outOfBond) }
        self.hours = hours
        
        guard minutes < 60 && minutes >= 0 else { throw Error.minutes(.outOfBond) }
        self.minutes = minutes
        
        guard seconds < 60 && seconds >= 0 else { throw Error.seconds(.outOfBond) }
        self.seconds = seconds
    }
}
