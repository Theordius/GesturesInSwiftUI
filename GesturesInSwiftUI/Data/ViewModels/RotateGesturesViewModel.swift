//
//  RotateGesturesViewModel.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import Foundation
import SwiftUI

final class RotateGesturesViewModel: ObservableObject {
    @Published var examples: [ExampleModel<AnyView>] = []
    @Published var angle: Angle
    
    init(
        angle: Binding<Angle> = .constant(Angle(degrees: 0.0))
    ) {
        self.angle = angle.wrappedValue
        self.examples = ExampleModel<AnyView>.rotateGestureExamples(angle: angle)
    }
}
