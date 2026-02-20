//
//  ContentView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import SwiftUI
import Core

extension BerlinClockView {
    struct Model {
        let secondViewModel = SecondsView.Model()
        let hourViewModel = HoursView.Model()
        
        func update(date: Date) {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.second, .minute, .hour], from: date)
            guard let seconds = components.second else { return }
            guard let minutes = components.minute else { return }
            guard let hours = components.hour else { return }
            
            guard let digitalClock = try? DigitalClock(hours: hours, minutes: minutes, seconds: seconds) else { return }
            guard let berlinClock = try? BerlinClockConverter.berlinClock(from: digitalClock) else { return }
            secondViewModel.color = SecondsAdapter.color(from: berlinClock.seconds)
            
            hourViewModel.singleHourRectangleModels = HoursAdapter.singleHourRectangleModels(from: berlinClock.singleHour)
            hourViewModel.fiveHourRectangleModels = HoursAdapter.fiveHourRectangleModels(from: berlinClock.fiveHour)
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
}

struct BerlinClockView: View {
    let model = Model()
    var body: some View {
        TimelineView(.periodic(from: .now, by: 1)) { context in
            VStack(spacing: 20) {
                SecondsView(model: model.secondViewModel)
                HoursView(model: model.hourViewModel)
                MinutesView()
                Text(context.date, format: .dateTime.hour().minute().second())
            }
            .onChange(of: context.date) { oldValue, newValue in
                model.update(date: newValue)
            }
        }
        .padding()
    }
}

#Preview {
    BerlinClockView()
}
