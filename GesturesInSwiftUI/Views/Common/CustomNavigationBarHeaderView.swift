//
//  CustomNavigationBarHeaderView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct CustomNavigationBarHeaderView: View {
   
    //MARK: - PROPERTIES
    let title: LocalizedStringKey

    //MARK: - BODY
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.black)
            .italic()
    }
}

//MARK: - PREVIEW

#Preview {
    CustomNavigationBarHeaderView(
        title: "Swift UI Gestures"
    )
    .previewLayout(.sizeThatFits)
}
