//
//  DragGestureWithKeepingPosition.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

/// Draging example with keeping the track of the position of the item we are moving
/// Additionaly while click on the item we can reset the possition of the item

import SwiftUI

struct DragGestureWithKeepingPositionView: View {
    // MARK: - PROPERTIES
    @State private var currentOffset: CGSize = .zero
    @State private var endOffset: CGSize = .zero

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
                    backgroundColor: .black.opacity(0.75),
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
    DragGestureWithKeepingPositionView()
}
