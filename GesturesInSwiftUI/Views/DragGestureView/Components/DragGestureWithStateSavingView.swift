//
//  DragGestureWithStateSaving.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import SwiftUI

struct DragGestureWithStateSavingView: View {
    // MARK: - PROPERTIES
    @Binding var endOffset: CGSize
    @State private var currentOffset: CGSize = .zero

    var offset: CGSize {
        CGSize(
            width: currentOffset.width + endOffset.width,
            height: currentOffset.height + endOffset.height
        )
    }
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                SquaresGridView()

                Spacer()

                TextView(
                    text: "Drag Me!",
                    backgroundColor: .black.opacity(0.85),
                    foregroundColor: .orange.opacity(0.85),
                    cornerRadius: 10
                )
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged {
                            value in
                            withAnimation(.spring()) {
                                currentOffset = value.translation
                            }
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                endOffset = CGSize(
                                    width: currentOffset.width + endOffset.width,
                                    height: currentOffset.height + endOffset.height
                                )
                                currentOffset = .zero
                            }
                        }
                )
                .onTapGesture {
                    endOffset = .zero
                    currentOffset = .zero
                }

                Spacer()
            }
        }
        .navigationTitle("Drag Gesture with bounce back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW
#Preview {
    DragGestureWithStateSavingView(endOffset: .constant(.zero))
}
