//
//  RotateGestureWithStatePreserveView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct RotatingGestureWithStatePreserveView: View {
    //MARK: - Properties:
    @Binding var angle: Angle

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
        .navigationTitle("Rotation Without State Preserving")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RotatingGestureWithStatePreserveView(angle: .constant(Angle(degrees: 0.0)))
}
