//
//  MagnificationGesturesViewModel.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import Foundation
import SwiftUI

final class MagnificationGesturesViewModel: ObservableObject {
    @Published var examples: [ExampleModel<AnyView>] = ExampleData.magnificationGestureExamples
    @Published var scaleFactor: CGFloat = 1.0
}
