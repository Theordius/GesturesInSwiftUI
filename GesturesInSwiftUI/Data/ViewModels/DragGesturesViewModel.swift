//
//  DragGesturesViewModel.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import Foundation
import SwiftUI

final class DragGesturesViewModel: ObservableObject {
    @Published var examples: [ExampleModel<AnyView>] = []
    @Published var endOffset: CGSize = .zero

    init(
        endOffset: Binding<CGSize> = .constant(.zero)
    ) {
        self.endOffset = endOffset.wrappedValue
        self.examples = ExampleModel<AnyView>.dragGesturesExamples(endOffset: endOffset)
    }
}
