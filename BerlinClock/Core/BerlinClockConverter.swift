//
//  BerlinClockRules.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import Foundation

/// Acceptance Criteria
/// Converting Digital Time to Berlin Time.
/// Converting Berlin Time to Digital Time
public enum BerlinClockConverter {
    /// So what we want first is a way to get a textual representation of a Berlin Clock time based on a digital time. This is so we can use this converter everywhere, all we have to do is hook up a frontend. We're going to be going over the clock row by row to make things clearer and ensure we get everything right first time.
    /// 00:00:00    YOOOOOOOOOOOOOOOOOOOOOOO
    /// 23:59:59    ORRRRRRROYYRYYRYYRYYYYYY
    /// 16:50:06    YRRROROOOYYRYYRYYRYOOOOO
    /// 11:37:01    ORROOROOOYYRYYRYOOOOYYOO
    public static func berlinClock(from date: Date) -> BerlinClock {
        let calendar = Calendar.current
        
        let seconds = SecondsConverter.string(from: calendar.component(.second, from: date))
        
        let minutes = calendar.component(.minute, from: date)
        let singleMinute = MinuteConverter.singleMinuteString(from: minutes)
        let fiveMinute = MinuteConverter.fiveMinuteString(from: minutes)
        
        let hours = calendar.component(.hour, from: date)
        let singleHour = HourConverter.singleHourString(from: hours)
        let fiveHour = HourConverter.fiveHourString(from: hours)
        
        return BerlinClock(seconds: seconds, singleMinute: singleMinute, fiveMinute: fiveMinute, singleHour: singleHour, fiveHour: fiveHour)
    }
    
    /// The change to using Berlin Time has gone so well that we've decided to introduce it everywhere, from the clocks on the microwaves to the company-approved wristwatches. Unfortunately, people are having trouble quickly deciphering the current time which is having a detrimental effect on productivity. As such, we need to create a converter that takes a Berlin Time and returns a Digital Time.
    static public func date(from berlinClock: BerlinClock) -> Date {
        return Date()
    }
}
