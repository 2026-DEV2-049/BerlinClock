//
//  BerlinClockViewModel.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 20/02/2026.
//

import SwiftUI
import Core

extension BerlinClockView {
    struct Model {
        let secondViewModel = SecondsView.Model()
        let hourViewModel = DoubleRectangleView.Model()
        let minuteViewModel = DoubleRectangleView.Model()
        
        func update(date: Date) {
            guard let berlinClock = BerlinClockFactory.create(from: date) else { return }
            secondViewModel.color = SecondsAdapter.color(from: berlinClock.seconds)
            
            hourViewModel.topRectangleViewModels = HoursAdapter.fiveHourRectangleModels(from: berlinClock.fiveHour)
            hourViewModel.bottomRectangleViewModels = HoursAdapter.singleHourRectangleModels(from: berlinClock.singleHour)

            minuteViewModel.topRectangleViewModels = MinutesAdapter.fiveMinuteRectangleModels(from: berlinClock.fiveMinute)
            minuteViewModel.bottomRectangleViewModels = MinutesAdapter.singleMinuteRectangleModels(from: berlinClock.singleMinute)
        }
    }
    
    enum BerlinClockFactory {
        static func create(from date: Date) -> BerlinClock? {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.second, .minute, .hour], from: date)
            guard let seconds = components.second else { return nil }
            guard let minutes = components.minute else { return nil }
            guard let hours = components.hour else { return nil }
            
            guard let digitalClock = try? DigitalClock(hours: hours, minutes: minutes, seconds: seconds) else { return nil }
            guard let berlinClock = try? BerlinClockConverter.berlinClock(from: digitalClock) else { return nil }
            return berlinClock
        }
    }
    
    enum SecondsAdapter {
        static func color(from berlinClockSeconds: String) -> Color {
            berlinClockSeconds == "Y" ? .yellow : .clear
        }
    }
    
    enum HoursAdapter {
        static func singleHourRectangleModels(from berlinClockSingleHour: String) -> [RectangleView.Model] {
            berlinClockSingleHour.map { RectangleView.Model(color: $0 == "R" ? .red : .clear) }
        }
        
        static func fiveHourRectangleModels(from berlinClockFiveHour: String) -> [RectangleView.Model] {
            berlinClockFiveHour.map { RectangleView.Model(color: $0 == "R" ? .red : .clear) }
        }
    }
    
    enum MinutesAdapter {
        static func singleMinuteRectangleModels(from berlinClockSingleMinute: String) -> [RectangleView.Model] {
            berlinClockSingleMinute.map { RectangleView.Model(color: $0 == "Y" ? .yellow : .clear) }
        }
        
        static func fiveMinuteRectangleModels(from berlinClockFiveMinute: String) -> [RectangleView.Model] {
            berlinClockFiveMinute.map { string in
                var color: Color = .clear
                if string == "Y" { color = .yellow }
                else if string == "R" { color = .red }
                return RectangleView.Model(color: color)
            }
        }
    }
}
