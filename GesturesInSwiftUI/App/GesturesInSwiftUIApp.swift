//
//  GesturesInSwiftUIApp.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI
import TipKit

@main
struct GesturesInSwiftUIApp: App {
    
    @AppStorage("language") var language: String = "en"
    
    var body: some Scene {
        WindowGroup {
            ContentView(language: $language)
                .environment(\.locale, Locale(identifier: language))
                .task {
                    try? Tips.configure(
                        [.displayFrequency(.immediate),
                         .datastoreLocation(.applicationDefault)
                        ]
                    )
                }
        }
    }
}
