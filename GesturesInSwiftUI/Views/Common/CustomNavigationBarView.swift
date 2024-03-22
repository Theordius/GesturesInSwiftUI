//
//  CustomNavigationBarView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct CustomNavigationBarView: View {
    //MARK: - PROPERTIES
    @Binding var language: String
    @State private var isShowingMenu = false

    var title: LocalizedStringKey

    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
             // TODO
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.title)
                    .foregroundColor(.black)
            })

            Spacer()

            CustomNavigationBarHeaderView(title: title)

            Spacer()

            LanguageOptionsMenuView(language: $language)
        } //: HSTACK
    }
}


#Preview {
    CustomNavigationBarView(
        language: .constant("en"),
        title: "Test"
    )
}
