//
//  GeneralGesturesViewModel.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import Foundation
import SwiftUI

final class GeneralGesturesViewModel: ObservableObject {
    @Published var examples: [ExampleModel<AnyView>] = []

    init(

    ) {
        self.examples = ExampleModel<AnyView>.generalGesturesExamples()
    }
}
