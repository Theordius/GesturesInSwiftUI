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
                destination: AnyView(MagnifyAndStoreValueView(scaleFactor: scaleFactor))
            )
        ]
    }

    static func dragGesturesExamples(endOffset: Binding<CGSize>) -> [ExampleModel<AnyView>] {
        return [
            .init(
                title: "Drag gesture with bounce back",
                subtitle: "Draging with bounce back effect",
                destination: AnyView(DragGestureWithBounceBackView())
            ),
            .init(
                title: "Drag gesture with tracked possition",
                subtitle: "Draging with and keeping item in place",
                destination: AnyView(DragGestureWithKeepingPositionView())
            ),
            .init(
                title: "Drag gesture with state saving",
                subtitle: "Drag and save the position of the item",
                destination: AnyView(DragGestureWithStateSavingView(endOffset: endOffset))
            )
        ]
    }
}

