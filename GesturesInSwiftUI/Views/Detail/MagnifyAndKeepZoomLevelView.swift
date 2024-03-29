//
//  MagnifyAndStayView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct MagnifyAndKeepZoomLevelView: View {
    
    // MARK: - PROPERTIES
    @State private var currentZoom: CGFloat = 0.0
    @State private var totalZoom: CGFloat = 1.0
    
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                TextView(
                    text: "Zoom Me!",
                    backgroundColor: .black,
                    cornerRadius: 10
                )
                
                .scaleEffect(currentZoom + totalZoom)
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            currentZoom = value.magnification - 1
                        }
                        .onEnded { value in
                            totalZoom += currentZoom
                            currentZoom = 0
                        }
                )
                .accessibilityZoomAction { action in
                    if action.direction == .zoomIn {
                        totalZoom += 1
                    } else {
                        totalZoom -= 1
                    }
                }
                Spacer()
            }
            .navigationTitle("Magnify and Keep Zoom Level")
        }
    }
}

#Preview {
    MagnifyAndKeepZoomLevelView()
}
