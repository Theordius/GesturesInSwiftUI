//
//  ContentView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct ContentView: View {


    var body: some View {
        TabView {
            DragGesturesListView()
                .padding()
                .tabItem {
                    Label(
                        "Drag And Drop",
                        systemImage: "arrow.up.right"
                    )
                }
                .tag(1)

                MagnificationGesturesListView()
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
    }
}

#Preview {
    ContentView()
}
