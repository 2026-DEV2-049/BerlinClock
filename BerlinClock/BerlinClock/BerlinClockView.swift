//
//  ContentView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//


import SwiftUI

extension BerlinClockView {
    struct Model {
        let secondViewModel = SecondView.Model()
    }
}

struct BerlinClockView: View {
    let model = Model()
    var body: some View {
        TimelineView(.periodic(from: .now, by: 1)) { context in
            VStack(spacing: 20) {
                SecondView(model: model.secondViewModel)
                HourView()
                MinuteView()
                Text(context.date, format: .dateTime.hour().minute().second())
            }
        }
        .padding()
    }
}

#Preview {
    BerlinClockView()
}
