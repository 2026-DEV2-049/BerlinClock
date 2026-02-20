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
        
        func update(date: Date) {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.second, .minute, .hour], from: date)
            guard let seconds = components.second else { return }
            guard let minutes = components.minute else { return }
            guard let hours = components.hour else { return }
            
            guard let digitalClock = try? DigitalClock(hours: hours, minutes: minutes, seconds: seconds) else { return }
            guard let berlinClock = try? BerlinClockConverter.berlinClock(from: digitalClock) else { return }
            secondViewModel.color = SecondsAdapter.color(from: berlinClock.seconds)
        }
    }
    
    enum SecondsAdapter {
        static func color(from berlinClockSeconds: String) -> Color {
            berlinClockSeconds == "Y" ? .blue : .clear
        }
    }
}

struct BerlinClockView: View {
    let model = Model()
    var body: some View {
        TimelineView(.periodic(from: .now, by: 1)) { context in
            VStack(spacing: 20) {
                SecondsView(model: model.secondViewModel)
                HoursView()
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
