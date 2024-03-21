//
//  ExamplesList.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import Foundation
import SwiftUI

struct ExampleData {
    static let magnificationGestureExamples: [ExampleItem<AnyView>] = [
        ExampleItem(
            title: "Magnify with bounce back",
            subtitle: "Bounce back gesture",
            destination: AnyView(MagnifyAndBounceBackView())
        ),
        ExampleItem(
            title: "Magnify with keeping the value",
            subtitle: "Keep magnification value",
            destination: AnyView(MagnifyAndKeepZoomLevelView())
        ),
        ExampleItem(
            title: "Magnify with value storage",
            subtitle: "Keep scale factor across the views",
            destination: AnyView(MagnifyAndStoreValueView(scaleFactor: .constant(1.0)))
        ),
    ]
}
