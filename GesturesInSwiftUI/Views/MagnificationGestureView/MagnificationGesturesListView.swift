//
//  MagnificationGestureView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct MagnificationGesturesListView: View {
    // MARK: - PROPERTIES
    @State private var scaleFactor: CGFloat = 1.0
    @StateObject var viewModel = MagnificationGesturesViewModel()

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ExampleListView(
                headerTitle: "Magnification Gestures",
                examples: viewModel.examples
            )
        }
    }
}

// MARK: - PREVIEW
#Preview {
    MagnificationGesturesListView()
}
