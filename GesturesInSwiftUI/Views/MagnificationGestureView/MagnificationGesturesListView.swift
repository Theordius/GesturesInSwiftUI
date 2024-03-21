//
//  MagnificationGestureView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct MagnificationGesturesListView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink(destination: MagnifyAndBounceBackView(),
                                   label: {
                        VStack(alignment: .leading) {
                            Text(#"Magnification Gesture "Go Back""#)
                            Text("Zoom in gesture")
                                .fontWeight(.thin)
                        }
                    })

                    NavigationLink(destination: MagnifyAndKeepZoomLevelView(),
                                   label: {
                        VStack(alignment: .leading) {
                            Text(#"Magnification Gesture "Stay Still""#)
                            Text("Zoom our gesture")
                                .fontWeight(.thin)
                        }
                    })
                    NavigationLink(destination: Text("Example 3"),
                                   label: {
                        VStack(alignment: .leading) {
                            Text("Magnification Gesture")
                            Text("Store gesture state")
                                .fontWeight(.thin)
                        }
                    })

                } header: {
                    Text("Magnification Gestures")
                }
            }
            .listStyle(.plain)
        }
    }
}

// MARK: - PREVIEW
#Preview {
        MagnificationGesturesListView()
}
