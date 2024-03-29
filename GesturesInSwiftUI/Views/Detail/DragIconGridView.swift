//
//  DragIconGridView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 28/03/2024.
//

import SwiftUI

struct DragIconGridView: View {
    // MARK: - PROPERTIES

    @State private var icons: [[Icon]] = [
        [.init(name: "person", color: .red),
         .init(name: "xmark", color: .yellow),
         .init(name: "circle.fill", color: .blue)
        ],
        [.init(name: "circle.fill", color: .red),
         .init(name: "square.fill", color: .green),
         .init(name: "bolt.fill", color: .blue)
        ],
        [.init(name: "menucard.fill", color: .red),
         .init(name: "figure.walk", color: .yellow),
         .init(name: "person", color: .blue)
        ]
    ]

    private var iconsGridView: some View {
        Grid {
            ForEach(icons.indices, id: \.self) { row in
                GridRow {
                    ForEach(icons[row].indices, id: \.self) { col in
                        IconView(icon: $icons[row][col])
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
    }

    private var randomizeButton: some View {
        Button("Randomize") {
            withAnimation {
                shuffleIcons()
            }
        }
        .buttonStyle(BorderedProminentButtonStyle())
        .frame(maxWidth: .infinity)
        .foregroundStyle(.white)
        .fontWeight(.semibold)
        .padding()
    }

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground(colors: [.black, .white], opacity: 0.8)

                VStack {
                    header
                    iconsGridView
                    randomizeButton
                }
                .padding()
            }
        }
        .navigationTitle("Drag and drop icon with zIndex")
    }

    // MARK: - Subviews

    private var header: some View {
        VStack {
            Text("On this example you can drag the icon under this text or icon over another icon")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .zIndex(1)
                .foregroundStyle(.white)
                .shadow(radius: 2)
            Spacer()
        }
    }

    // MARK: - Private functions:

    private func shuffleIcons() {
        icons = icons.map { $0.shuffled() }
    }
}

// MARK: - PREVIEW
#Preview {
    DragIconGridView()
}
