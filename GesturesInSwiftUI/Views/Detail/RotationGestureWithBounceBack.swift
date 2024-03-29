//
//  RotationGestureWithBounceBack.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct RotationGestureWithBounceBack: View {

    // MARK: - PROPERTIES
    @State private var angle = Angle(degrees: 0.0)

    var rotation: some Gesture {
        RotateGesture()
            .onChanged { value in
                angle = value.rotation
            }
            .onEnded { _ in
                withAnimation(.spring()) {
                    angle = Angle(degrees: 0.0)
                }
            }
    }

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            TextView(
                text: "Rotate Me!",
                backgroundColor: .black,
                cornerRadius: 10
            )
            .rotationEffect(angle)
            .gesture(rotation)
        }
        .navigationTitle("Rotation with Bounce Back effect")
    }
}

// MARK: - PREVIEW
struct RotationGestureWithBounceBack_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureWithBounceBack()
    }
}
