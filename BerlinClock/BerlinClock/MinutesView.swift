//
//  MinutesView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import SwiftUI
internal import Combine

extension MinutesView {
    final class Model: ObservableObject {
        @Published var singleMinuteRectangleModels: [RectangleView.Model] = []
        @Published var fiveMinuteRectangleModels: [RectangleView.Model] = []
    }
}

struct MinutesView: View {
    @StateObject var model: Model
    var body: some View {
        VStack {
            HStack {
                ForEach(model.fiveMinuteRectangleModels) { rectangleViewModel in
                    RectangleView(model: rectangleViewModel)
                }
            }
            HStack {
                ForEach(model.singleMinuteRectangleModels) { rectangleViewModel in
                    RectangleView(model: rectangleViewModel)
                }
            }
        }
    }
}

#Preview {
    MinutesView(model: MinutesView.Model())
}
