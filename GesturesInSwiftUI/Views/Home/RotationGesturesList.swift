//
//  RotationGesturesList.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct RotationGesturesList: View {
    // MARK: - PROPERTIES
    @StateObject var viewModel: RotateGesturesViewModel

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ExampleListView(
                headerTitle: "Rotation gestures",
                examples: viewModel.examples
            )
        }
    }
}

// MARK: - PREVIEW
struct RotationGesturesList_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesturesList(viewModel: RotateGesturesViewModel())
    }
}
