//
//  SecondsView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import SwiftUI
internal import Combine

extension SecondsView {
    class Model: ObservableObject {
        @Published var color: Color = .red
    }
}

struct SecondsView: View {
    @StateObject var model: Model
    var body: some View {
        Circle()
            .fill(model.color)
            .stroke(.black)
    }
}

#Preview {
    SecondsView(model: SecondsView.Model())
}
