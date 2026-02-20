//
//  HoursView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import SwiftUI
internal import Combine

extension DoubleRectangleView {
    final class Model: ObservableObject {
        @Published var topRectangleViewModels: [RectangleView.Model] = []
        @Published var bottomRectangleViewModels: [RectangleView.Model] = []
    }
}

struct DoubleRectangleView: View {
    @StateObject var model: Model
    var body: some View {
        VStack {
            HStack {
                ForEach(model.topRectangleViewModels) { rectangleViewModel in
                    RectangleView(model: rectangleViewModel)
                }
            }
            HStack {
                ForEach(model.bottomRectangleViewModels) { rectangleViewModel in
                    RectangleView(model: rectangleViewModel)
                }
            }
        }
    }
}

#Preview {
    DoubleRectangleView(model: DoubleRectangleView.Model())
}
