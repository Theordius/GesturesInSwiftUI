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
    
   @StateObject var applicationData = ApplicationData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.locale, Locale(identifier: applicationData.language))
                .environmentObject(applicationData)
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
