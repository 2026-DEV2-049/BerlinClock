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
    
    public enum Error: Swift.Error, Equatable {
        case seconds(Reason)
        case singleMinute(Reason)
        case fiveMinute(Reason)
        case singleHour(Reason)
        case fiveHour(Reason)
        
        public enum Reason {
            case invalidLength
            case invalidCharacters
        }
    }
    
    public var fullString: String {
        seconds + fiveHour + singleHour + fiveMinute + singleMinute
    }
    
    public init(seconds: String, singleMinute: String, fiveMinute: String, singleHour: String, fiveHour: String) throws {
        guard seconds.count == 1 else { throw Error.seconds(.invalidLength) }
        guard Self.isComposedOnlyOfSpecificLetters(seconds, allowedLetters: "YO") else { throw Error.seconds(.invalidCharacters) }
        self.seconds = seconds
        
        guard singleMinute.count == 4 else { throw Error.singleMinute(.invalidLength) }
        guard Self.isComposedOnlyOfSpecificLetters(singleMinute, allowedLetters: "OY") else { throw Error.singleMinute(.invalidCharacters) }
        self.singleMinute = singleMinute
        
        guard fiveMinute.count == 11 else { throw Error.fiveMinute(.invalidLength) }
        guard Self.isComposedOnlyOfSpecificLetters(fiveMinute, allowedLetters: "OYR") else { throw Error.fiveMinute(.invalidCharacters) }
        self.fiveMinute = fiveMinute
        
        guard singleHour.count == 5 else { throw Error.singleHour(.invalidLength) }
        guard Self.isComposedOnlyOfSpecificLetters(singleHour, allowedLetters: "RRROOOO") else { throw Error.singleHour(.invalidCharacters) }
        self.singleHour = singleHour
        
        guard fiveHour.count == 5 else { throw Error.fiveHour(.invalidLength) }
        guard Self.isComposedOnlyOfSpecificLetters(fiveHour, allowedLetters: "RRROOOO") else { throw Error.fiveHour(.invalidCharacters) }
        self.fiveHour = fiveHour
    }
    
    static func isComposedOnlyOfSpecificLetters(_ string: String, allowedLetters: String) -> Bool {
        let allowedSet = Set(allowedLetters)
        return string.allSatisfy { allowedSet.contains($0) }
    }
}
