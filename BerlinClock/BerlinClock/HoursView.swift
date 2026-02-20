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
        @Published var rectangleModels: [RectangleView.Model] = [RectangleView.Model(color: .red),
                                                                 RectangleView.Model(color: .green)]
    }
}

struct HoursView: View {
    @StateObject var model: Model
    var body: some View {
        HStack {
            ForEach(model.rectangleModels) { rectangleViewModel in
                RectangleView(model: rectangleViewModel)
            }
        }
    }
}

#Preview {
    HoursView(model: HoursView.Model())
}
