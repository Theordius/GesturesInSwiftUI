//
//  ContentView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct ContentView: View {
 
    @Binding var language: String
    @State private var scaleFactor: CGFloat = 1.0
    @State private var endOffset: CGSize = .zero
    
    var body: some View {
        NavigationStack {
            TabView {
                    DragGesturesListView(
                        viewModel: DragGesturesViewModel(endOffset: $endOffset)
                    )
                        .padding()
                        .tabItem {
                            Label(
                                "Drag And Drop",
                                systemImage: "arrow.up.right"
                            )
                        }
                        .tag(1)

                    MagnificationGesturesListView(viewModel: MagnificationGesturesViewModel(scaleFactor: $scaleFactor))
                        .padding()
                        .tabItem {
                            Label(
                                "Magnification",
                                systemImage: "arrow.up.left.and.down.right.magnifyingglass"
                            )
                        }
                        .tag(2)

                    Text("Rotation Gestures")
                        .padding()
                        .tabItem {
                            Label(
                                "Rotation",
                                systemImage: "crop.rotate"
                            )
                        }
                        .tag(3)
                    Text("Combined Gestures")
                        .padding()
                        .tabItem {
                            Label(
                                "Combined",
                                systemImage: "command.square"
                            )
                        }
                        .tag(4)
                }
            .tint(.accentColor)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    LanguageOptionsMenuView(language: $language)
                }
            }
        }
    }
}

#Preview {
    ContentView(language: .constant("en"))
}
