//
//  DragAndDropGestureView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 26/03/2024.
//

import SwiftUI

struct DragAndDropGestureView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var appData: ApplicationData

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                HStack(spacing: 10) {
                    ForEach(appData.userData) { picture in
                        PictureView(picture: picture)
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 100)

                GeometryReader { geo in
                    VStack {
                        Image(appData.selected ?? "nopicture")
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .clipped()
                            .overlay(appData.dropOver ? Color.green.opacity(0.2) : Color.clear)
                    }
                    .onAppear(perform: {
                        appData.dropFrame = geo.frame(in: .global)
                    })
                }
                .padding()
                .zIndex(-1)
            }
            .padding(.top)
        }
        .navigationTitle("Drag and drop image")
    }
}


// MARK: - PREVIEW
struct DragAndDropGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragAndDropGestureView()
            .environmentObject(ApplicationData())
    }
}
