//
//  DragGestureWithBounceBackView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import SwiftUI

struct DragGestureWithBounceBackView: View {
    // MARK: - PROPERTIES
    @State private var offset: CGSize = .zero
    
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
                        .onChanged { value in
                            offset = value.translation
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                        }
                )
                
                Spacer()
            }
        }
        .navigationTitle("Drag Gesture with bounce back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW
#Preview {
    DragGestureWithBounceBackView()
}
