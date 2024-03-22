//
//  MagnificationGoBackView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct MagnifyAndBounceBackView: View {
    // MARK: - PROPERTIES

    @GestureState private var magnifyBy = 1.0

    var magnification: some Gesture {
        MagnifyGesture()
            .updating($magnifyBy) { value, gestureState, transaction in
                gestureState = value.magnification
            }
    }

    // MARK: - BODY
    var body: some View {
        NavigationStack {
                VStack {
                    Spacer()
                    TextView(
                        text: "Hello, World!",
                        backgroundColor: .black,
                        cornerRadius: 10
                    )
                    .scaleEffect(magnifyBy)
                    .gesture(magnification)
                    .animation(.spring(), value: magnifyBy)
                    Spacer()
                }
                .navigationTitle("Magnify and bounce back")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - PREVIEW
struct MagnificationGoBackView_Previews: PreviewProvider {
    static var previews: some View {
        MagnifyAndBounceBackView()
    }
}
