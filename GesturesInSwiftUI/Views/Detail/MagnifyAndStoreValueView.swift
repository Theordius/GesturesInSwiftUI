//
//  MagnifyAndStoreValueView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import SwiftUI

/// Magnify gesture version where the value of magnification is being preserved when we change the view

struct MagnifyAndStoreValueView: View {
    // MARK: - PROPERTIES
    @State private var factorDelta: CGFloat = 0.0
    @Binding var scaleFactor: CGFloat

    var sumOfFactors: CGFloat {
        factorDelta + scaleFactor
    }

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                TextView(
                    text: "Zoom Me!",
                    backgroundColor: .black,
                    cornerRadius: 10
                )
                .scaleEffect(sumOfFactors)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                factorDelta = value - 1
                            }
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                scaleFactor += factorDelta
                                factorDelta = 0
                            }
                        }
                )
                Spacer()
            }
            .navigationTitle("Magnify and preserve magnification value")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

    // MARK: - PREVIEW
#Preview {
    MagnifyAndStoreValueView(scaleFactor: .constant(1.0))
}
