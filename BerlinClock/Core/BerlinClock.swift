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
        case berlinClockString(Reason)
        
        public enum Reason {
            case invalidLength
            case invalidCharacters
        }
    }
    
    public var fullString: String {
        seconds + fiveHour + singleHour + fiveMinute + singleMinute
    }
    
    public init(berlinClockString: String) throws {
        guard berlinClockString.count == 24 else { throw Error.berlinClockString(.invalidLength) }
        guard berlinClockString.isComposedOnlyOf("OYGRYB") else { throw Error.berlinClockString(.invalidCharacters) }
        
        self.seconds = berlinClockString.sliceString(start: 0, end: 2)
        self.singleHour = berlinClockString.sliceString(start: 6, end: 10)
        self.fiveHour = berlinClockString.sliceString(start: 2, end: 6)
        self.fiveMinute = berlinClockString.sliceString(start: 10, end: 16)
        self.singleMinute = berlinClockString.sliceString(start: 16, end: 20)
    }
    
    public init(seconds: String, singleMinute: String, fiveMinute: String, singleHour: String, fiveHour: String) throws {
        guard seconds.count == 1 else { throw Error.seconds(.invalidLength) }
        guard seconds.isComposedOnlyOf("YO") else { throw Error.seconds(.invalidCharacters) }
        self.seconds = seconds
        
        guard singleMinute.count == 4 else { throw Error.singleMinute(.invalidLength) }
        guard singleMinute.isComposedOnlyOf("OY") else { throw Error.singleMinute(.invalidCharacters) }
        self.singleMinute = singleMinute
        
        guard fiveMinute.count == 11 else { throw Error.fiveMinute(.invalidLength) }
        guard fiveMinute.isComposedOnlyOf("OYR") else { throw Error.fiveMinute(.invalidCharacters) }
        self.fiveMinute = fiveMinute
        
        guard singleHour.count == 4 else { throw Error.singleHour(.invalidLength) }
        guard singleHour.isComposedOnlyOf("OR") else { throw Error.singleHour(.invalidCharacters) }
        self.singleHour = singleHour
        
        guard fiveHour.count == 4 else { throw Error.fiveHour(.invalidLength) }
        guard fiveHour.isComposedOnlyOf("OR") else { throw Error.fiveHour(.invalidCharacters) }
        self.fiveHour = fiveHour
    }
}

extension String {
    func isComposedOnlyOf(_ allowedLetters: String) -> Bool {
        let allowedSet = Set(allowedLetters)
        return self.allSatisfy { allowedSet.contains($0) }
    }
    
    func sliceString(start: Int, end: Int) -> String {
        let data = Array(self)
        return String(data[start..<end])
    }
}
