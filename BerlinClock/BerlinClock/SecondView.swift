//
//  SecondView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 19/02/2026.
//


import SwiftUI
import Combine

extension SecondView {
    class Model: ObservableObject {
        @Published var color: Color = .red
    }
}

struct SecondView: View {
    @StateObject var model: Model
    var body: some View {
        Circle()
            .fill(model.color)
            .stroke(.black)
    }
}

#Preview {
    SecondView(model: SecondView.Model())
}
