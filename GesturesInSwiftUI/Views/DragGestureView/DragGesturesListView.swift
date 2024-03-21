//
//  DragGesturesListView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import SwiftUI

struct DragGesturesListView: View {
    // MARK: - PROPERTIES
    @StateObject var viewModel: DragGesturesViewModel

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ExampleListView(
                headerTitle: "Drag and Drop Gestures",
                examples: viewModel.examples
            )
        }
    }
}

// MARK: - PREVIEW
#Preview {
    DragGesturesListView(
        viewModel: DragGesturesViewModel(endOffset: .constant(.zero))
    )
}
