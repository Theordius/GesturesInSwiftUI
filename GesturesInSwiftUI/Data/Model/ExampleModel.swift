//
//  ExampleItem.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import SwiftUI

struct ExampleModel<Destination: View>: Identifiable {
    let id = UUID()
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey
    let destination: Destination
}

//MARK: - Gestures examples for the list

extension ExampleModel {

    static func magnificationGesturesExamples(scaleFactor: Binding<CGFloat>) -> [ExampleModel<AnyView>] {
        return [
            .init(
                title: "Example 1",
                subtitle: "Magnification with bounce back effect",
                destination: AnyView(MagnifyAndBounceBackView())
            ),
            .init(
                title: "Example 2",
                subtitle: "Keeping magnification value",
                destination: AnyView(MagnifyAndKeepZoomLevelView())
            ),
            .init(
                title: "Example 3",
                subtitle: "Magnification with scale preservation across the views",
                destination: AnyView(MagnifyAndStoreValueView(scaleFactor: scaleFactor))
            )
        ]
    }

    static func dragGesturesExamples(endOffset: Binding<CGSize>) -> [ExampleModel<AnyView>] {
        return [
            .init(
                title: "Example 1",
                subtitle: "Dragging with bounce back effect",
                destination: AnyView(DragGestureWithBounceBackView())
            ),
            .init(
                title: "Example 2",
                subtitle: "Dragging without bouncing",
                destination: AnyView(DragGestureWithoutBounceBackView())
            ),
            .init(
                title: "Example 3",
                subtitle: "Drag item and preserve it's position across the views",
                destination: AnyView(DragGestureWithStateSavingView(endOffset: endOffset))
            ),
            .init(
                title: "Example 4",
                subtitle: "Drag and drop gesture",
                destination: AnyView(DragAndDropGestureView()
                    .environmentObject(ApplicationData()))
            ),
            .init(
                title: "Example 5",
                subtitle: "Drag example utilizing zIndex",
                destination: AnyView(DragIconGridView())
            )
        ]
    }

    static func rotateGestureExamples(angle: Binding<Angle>) -> [ExampleModel<AnyView>] {
        return [
            .init(
                title: "Example 1",
                subtitle: "Rotate back and return to starting value",
                destination: AnyView(RotationGestureWithBounceBack())
            ),
            .init(
                title: "Example 2",
                subtitle: "Keeping rotation value",
                destination: AnyView(RotationGestureWithoutBounceBack())
            ),
            .init(
                title: "Example 3",
                subtitle: "Preserve the rotation angle",
                destination: AnyView(RotatingGestureWithStatePreserveView(angle: angle))
            )
        ]
    }
    static func generalGesturesExamples() -> [ExampleModel<AnyView>] {
        return [
            .init(
                title: "Example 1",
                subtitle: "Combining gestures",
                destination: AnyView(CombinedGesturesView())
            ),
            .init(
                title: "Example 2",
                subtitle: "Long press gesture with context menu",
                destination: AnyView(LongPressGestureView())
            )
        ]
    }
}

