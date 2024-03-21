//
//  MagnificationGesturesViewModel.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import Foundation
import SwiftUI

final class MagnificationGesturesViewModel: ObservableObject {
    @Published var examples: [ExampleModel<AnyView>] = []
    @Published var scaleFactor: CGFloat

    init(
        scaleFactor: Binding<CGFloat> = .constant(1.0)
    ) {
        self.scaleFactor = scaleFactor.wrappedValue
        self.examples = ExampleModel<AnyView>.magnificationGesturesExamples(scaleFactor: scaleFactor)
    }
}



