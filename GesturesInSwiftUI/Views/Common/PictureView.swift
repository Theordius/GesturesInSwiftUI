//
//  PictureView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 26/03/2024.
//

import SwiftUI

struct PictureView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var appData: ApplicationData
    @State private var offset = CGSize.zero

    var picture: Picture
    
    // MARK: - BODY
    var body: some View {
        Image(picture.name)
            .resizable()
            .scaledToFit()
            .offset(offset)
        
            .gesture(DragGesture(coordinateSpace: .global)
                .onChanged {
                    value in
                    appData.dropOver = appData.dropFrame.contains(value.location)
                    offset = value.translation
                }
                .onEnded { value in
                    if appData.dropOver {
                        appData.selected = picture.name
                        appData.remove(id: picture.id)
                        appData.dropOver = false
                    } else {
                        offset = CGSize.zero
                    }
                }
            )
    }
}

// MARK: - PREVIEW
struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView(picture: Picture(name: "spot1"))
            .environmentObject(ApplicationData())
    }
}
