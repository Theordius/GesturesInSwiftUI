//
//  LanguageOptionsMenuView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct LanguageOptionsMenuView: View {
    // MARK: - PROPERTIES
    @Environment(\.colorScheme) var colorScheme
    @Binding var language: String

    // MARK: - BODY
    var body: some View {
        languageMenu()
    }


    //MARK: - Private functions:

    @ViewBuilder
    private func languageMenu() -> some View {
        Menu {
            Button("English") {
                language = "en"
            }

            Button("Polish") {
                language = "pl"
            }
        } label : {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(
                    colorScheme == .dark
                    ? .white
                    : .black
                )
        }
    }
}

// MARK: - PREVIEW
#Preview {
    LanguageOptionsMenuView(language: .constant("en"))
}
