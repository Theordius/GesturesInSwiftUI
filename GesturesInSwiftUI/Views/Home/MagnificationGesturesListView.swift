//
//  MagnificationGesturesView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct MagnificationGesturesListView: View {
   
    // MARK: - PROPERTIES
    @StateObject var viewModel: MagnificationGesturesViewModel

    // MARK: - BODY
    var body: some View {
        NavigationView {
            ExampleListView(
                headerTitle: "Magnification Gestures",
                examples: viewModel.examples
            )
        }
    }
}

// MARK: - PREVIEW
#Preview {
    MagnificationGesturesListView(
        viewModel: MagnificationGesturesViewModel(scaleFactor: .constant(1.0))
    )
}
