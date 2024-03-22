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
    @State private var isShowingInformation = false

    var title: LocalizedStringKey

    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                isShowingInformation = true
            }, label: {
                ZStack {
                    Image(systemName: "questionmark.circle")
                        .font(.title)
                        .foregroundColor(.black)
                        .sheet(isPresented: $isShowingInformation) {
                            AppInformationView()
                        }

                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: -10, y: -10)
                }
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
