//
//  ContentView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                MagnificationGesturesListView()
//                Text("Drag Gestures")
//                Text("Rotation Gesture")
//                Text("General Gesrures")
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    ContentView()
}
