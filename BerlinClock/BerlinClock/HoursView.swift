//
//  HoursView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import SwiftUI
internal import Combine

extension HoursView {
    final class Model: ObservableObject {
        @Published var singleHourRectangleModels: [RectangleView.Model] = []
        @Published var fiveHourRectangleModels: [RectangleView.Model] = []
    }
}

struct HoursView: View {
    @StateObject var model: Model
    var body: some View {
        VStack {
            HStack {
                ForEach(model.fiveHourRectangleModels) { rectangleViewModel in
                    RectangleView(model: rectangleViewModel)
                }
            }
            HStack {
                ForEach(model.singleHourRectangleModels) { rectangleViewModel in
                    RectangleView(model: rectangleViewModel)
                }
            }
        }
    }
}

#Preview {
    HoursView(model: HoursView.Model())
}
