//
//  ExamplesList.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import Foundation
import SwiftUI

struct ExampleData {

    static let magnificationGestureExamples: [ExampleModel<AnyView>] = [
        .init(
            title: "Magnify with bounce back",
            subtitle: "Bounce back gesture",
            destination: AnyView(MagnifyAndBounceBackView())
        ),
        .init(
            title: "Magnify with keeping the value",
            subtitle: "Keep magnification value",
            destination: AnyView(MagnifyAndKeepZoomLevelView())
        ),
        .init(
            title: "Magnify with value storage",
            subtitle: "Keep scale factor across the views",
            destination: AnyView(MagnifyAndStoreValueView(scaleFactor: .constant(1.0)))
        )
    ]

    static let dragGestureExamples: [ExampleModel<AnyView>] = [
        .init(
            title: "Drag gesture with bounce back",
            subtitle: "Draging with bounce back effect",
            destination: AnyView(DragGestureWithBounceBackView())
        ),
        .init(
            title: "Drag gesture with tracked possition",
            subtitle: "Draging with and keeping item in place",
            destination: AnyView(DragGestureWithKeepingPosition())
        )
    ]
}
