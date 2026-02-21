//
//  ContentView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 18/02/2026.
//

import SwiftUI

struct BerlinClockView: View {
    let model = Model()
    var body: some View {
        TimelineView(.periodic(from: .now, by: 1)) { context in
            VStack(spacing: 20) {
                SecondsView(model: model.secondViewModel)
                DoubleRectangleView(model: model.hourViewModel)
                DoubleRectangleView(model: model.minuteViewModel)
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
