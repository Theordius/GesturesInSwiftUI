//
//  GeneralGesturesList.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct GeneralGesturesList: View {
    // MARK: - PROPERTIES
    @StateObject var viewModel: GeneralGesturesViewModel

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ZStack {
                ExampleListView(
                    headerTitle: "General gestures",
                    examples: viewModel.examples
                )
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    GeneralGesturesList(viewModel: GeneralGesturesViewModel())
}
