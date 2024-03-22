//
//  TextView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct TextView: View {

    // MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme

    let text: LocalizedStringKey
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let darkModeGradient: LinearGradient
    let lightModeGradient: LinearGradient

    init(
        text: LocalizedStringKey,
        backgroundColor: Color,
        cornerRadius: CGFloat,
        darkModeGradient: LinearGradient = LinearGradient(
            colors: [.blue, .yellow, .green],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ),
        lightModeGradient: LinearGradient = LinearGradient(
            colors: [.orange, .red, .blue],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    ) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.darkModeGradient = darkModeGradient
        self.lightModeGradient = lightModeGradient
    }

    // MARK: - BODY
    var body: some View {

        let gradient = colorScheme == .dark ? darkModeGradient : lightModeGradient

            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(gradient)
                .padding()
                .background(
                    colorScheme == .dark
                    ? .gray.opacity(0.80)
                    : backgroundColor
                )
                .clipShape(
                    .rect(cornerRadius: cornerRadius)
            )
    }
}

// MARK: - PREVIEW
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(
            text: "Drag me!",
            backgroundColor: .black,
            cornerRadius: 10
        )
    }
}
