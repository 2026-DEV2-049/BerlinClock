//
//  RectangleView.swift
//  BerlinClock
//
//  Created by 2026-DEV2-049 on 20/02/2026.
//

import SwiftUI

extension RectangleView {
    struct Model: Identifiable {
        let id = UUID()
        let color: Color
    }
}

struct RectangleView: View {
    let model: Model
    var body: some View {
        Rectangle()
            .fill(model.color)
            .stroke(.black)
    }
}

#Preview {
    RectangleView(model: RectangleView.Model(color: .red))
}
