//
//  LanguageOptionsMenuView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI
import TipKit

struct LanguageOptionsMenuView: View {
   
    // MARK: - PROPERTIES
    @Binding var language: String

    var gearMenuTip = GearMenuTip()

    // MARK: - BODY
    var body: some View {
        languageMenu()
            .popoverTip(gearMenuTip)
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
                .foregroundStyle(.black)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    LanguageOptionsMenuView(language: .constant("en"))
}
