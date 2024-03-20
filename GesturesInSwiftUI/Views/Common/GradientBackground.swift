//
//  GradientBackground.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct GradientBackground: View {
    // MARK: - PROPERTIES
    let colors: [Color]
    let opacity: CGFloat
    
    init(
        colors: [Color],
        opacity: CGFloat = 1
    ) {
        self.colors = colors
        self.opacity = opacity
    }


    // MARK: - BODY
    var body: some View {
            LinearGradient(
                colors: colors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

// MARK: - PREVIEW
#Preview {
    GradientBackground(
        colors: [.red, .green, .blue]
    )
}
