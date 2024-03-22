//
//  RotationGestureWithoutBounceBack.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct RotationGestureWithoutBounceBack: View {
    // MARK: - PROPERTIES

    @State private var angle = Angle(degrees: 0.0)

    var rotation: some Gesture {
        RotateGesture()
            .onChanged { value in
                angle = value.rotation
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
            .onTapGesture {
                withAnimation(.spring()) {
                    angle = Angle(degrees: 0.0)
                }
            }

        }
        .navigationTitle("Rotation Without Bounce Back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW
struct RotationWithStateSaving_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureWithoutBounceBack()
    }
}
