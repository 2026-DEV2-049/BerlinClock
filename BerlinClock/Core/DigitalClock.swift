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
    
    public init(hours: Int, minutes: Int, seconds: Int) throws {
        guard hours <= 24 else { throw Error.hours(.outOfBond) }
        self.hours = hours
        
        guard minutes <= 60 else { throw Error.minutes(.outOfBond) }
        self.minutes = minutes
        
        guard seconds <= 60 else { throw Error.seconds(.outOfBond) }
        self.seconds = seconds
    }
}
