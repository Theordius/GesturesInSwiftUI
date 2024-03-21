//
//  DragGesturesViewModel.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import Foundation
import SwiftUI

final class DragGesturesViewModel: ObservableObject {
    @Published var examples: [ExampleModel<AnyView>] = ExampleData.dragGestureExamples
}
