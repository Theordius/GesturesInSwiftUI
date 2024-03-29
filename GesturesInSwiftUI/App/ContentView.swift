//
//  ContentView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct ContentView: View {

    //MARK: - Properties

    @State private var scaleFactor: CGFloat = 1.0
    @State private var endOffset: CGSize = .zero
    @State private var angle: Angle = Angle(degrees: 1.0)

    var body: some View {
        NavigationStack {
            VStack(spacing: .zero) {
                CustomNavigationBarView(
                    title: "Swift UI Gestures"
                )
                .modifier(NavigationBarStyleModifier())

                TabView {
                    DragGesturesListView(
                        viewModel: DragGesturesViewModel(endOffset: $endOffset)
                    )

                    .tabItem {
                        Label(
                            "Drag And Drop",
                            systemImage: "arrow.up.right"
                        )
                    }
                    .tag(1)

                    MagnificationGesturesListView(
                        viewModel: MagnificationGesturesViewModel(scaleFactor: $scaleFactor)
                    )

                    .tabItem {
                        Label(
                            "Magnification",
                            systemImage: "arrow.up.left.and.down.right.magnifyingglass"
                        )
                    }
                    .tag(2)

                    RotationGesturesList(
                        viewModel: RotateGesturesViewModel(angle: $angle)
                    )

                    .tabItem {
                        Label(
                            "Rotation",
                            systemImage: "crop.rotate"
                        )
                    }
                    .tag(3)

                    GeneralGesturesList(viewModel: GeneralGesturesViewModel())

                        .tabItem {
                            Label(
                                "General",
                                systemImage: "command.square"
                            )
                        }
                        .tag(4)
                }
                .tint(.accentColor)
            }
            .ignoresSafeArea(.all, edges: .top)
            .onAppear {
                UITabBar.appearance().backgroundColor = UIColor.systemBackground
                UITabBar.appearance().isTranslucent = true
            }
        }
    }
}

#Preview {
    ContentView()
}
