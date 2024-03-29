//
//  GeneralGesturesView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

/// Gestures combination example using magnify, drag and rotation efects
import SwiftUI

struct CombinedGesturesView: View {

    // MARK: - PROPERTIES
    @State private var offset: CGSize = .zero
    @State private var angle = Angle(degrees: 0.0)
    @State private var currentZoom: CGFloat = 0.0
    @State private var totalZoom: CGFloat = 1.0

    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                withAnimation(.spring()) {
                    offset = value.translation
                }
            }
    }
    
    var magnifyGesture: some Gesture {
        MagnifyGesture()
            .onChanged { value in
                withAnimation(.spring()) {
                    currentZoom = value.magnification - 1
                }
            }
            .onEnded { value in
                totalZoom += currentZoom
                currentZoom = 0
            }
    }

    var rotationGesture: some Gesture {
        RotateGesture()
            .onChanged { value in
                angle = value.rotation
            }
    }

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            TextView(
                text: "Click Me!\nDrag Me!\nZoom Me! ",
                backgroundColor: .black.opacity(0.75),
                cornerRadius: 10
            )
            .multilineTextAlignment(.center)
            .offset(offset)
            .rotationEffect(angle)
            .scaleEffect(currentZoom + totalZoom)
            .gesture(
                SimultaneousGesture(
                    SimultaneousGesture(
                    dragGesture,
                    magnifyGesture
                ),
                    rotationGesture
                )
            )
            .onTapGesture {
                angle = Angle(degrees: 0.0)
                offset = .zero
                totalZoom = 1.0
            }
        }
        .navigationTitle("Gestrures combinations")
    }
}

// MARK: - PREVIEW
#Preview {
    CombinedGesturesView()
}
