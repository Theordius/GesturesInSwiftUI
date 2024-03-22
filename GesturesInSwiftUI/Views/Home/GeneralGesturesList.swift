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
            ExampleListView(
                headerTitle: "General gestures",
                examples: viewModel.examples
            )
        }
    }
}

// MARK: - PREVIEW
struct GeneralGesturesList_Previews: PreviewProvider {
    static var previews: some View {
        GeneralGesturesList(viewModel: GeneralGesturesViewModel())
    }
}
