//
//  IconView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 28/03/2024.
//

import SwiftUI

struct IconView: View {
    @Binding var icon: Icon
    @State private var offset =  CGSize.zero
    @State private var isTapped: Bool = false

    let duration: Double = 0.3

    private var isDragging: Bool {
        offset != .zero
    }

    private var drag: some Gesture {
        DragGesture(coordinateSpace: .global)
            .onChanged { value in
                withAnimation {
                    offset = CGSize(
                        width: value.translation.width,
                        height: value.translation.height
                    )
                    icon = Icon(
                        name: icon.name,
                        color: icon.color,
                        zIndex: 1
                    )
                }

            }
            .onEnded { _ in
                withAnimation {
                    offset = .zero

                    Task {
                        try await Task.sleep(nanoseconds: UInt64(duration * 1_000_000_000))
                        icon = Icon(
                            name: icon.name,
                            color: icon.color,
                            zIndex: 0
                        )
                    }
                }
            }

    }

    var body: some View {
        Image(systemName: icon.name)
            .imageScale(.large)
            .foregroundStyle(icon.color)
            .padding()
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                    .fill(
                        LinearGradient(
                            colors: [.black, .gray],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))

                    if offset != .zero {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(icon.color, lineWidth: 3)
                            .blur(radius: 5)
                    }
                }
            )
            .opacity(isDragging ? 0.9 : 1.0)
            .scaleEffect(isDragging ? 1.2 : 1.0)
            .offset(offset)
            .scaleEffect(isTapped ? 1.1 : 1.0)
            .animation(
                .spring(
                    response: 0.4,
                    dampingFraction: 0.6),
                    value: isTapped
                )
            .gesture(drag)
            .onTapGesture {
                isTapped = true
                icon = Icon(name: icon.name)
                Task {
                    try await Task.sleep(nanoseconds: UInt64(duration * 1_000_000_000))
                    isTapped = false
                }
            }
            .zIndex(icon.zIndex)
    }
}

#Preview {
    IconView(
        icon: .constant(
            .init(
                name: "menucard.fill",
                color: .red
            )
        )
    )
}
