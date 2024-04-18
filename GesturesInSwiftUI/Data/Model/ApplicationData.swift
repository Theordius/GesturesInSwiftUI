//
//  ApplicationData.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 26/03/2024.
//

import Foundation
import SwiftUI

class ApplicationData: ObservableObject {

    @AppStorage("language") var language = "en"

    @Published var userData: [Picture]
    @Published var selected: String?
    @Published var dropFrame = CGRect.zero
    @Published var dropOver = false

    init() {
        userData = [
            Picture(name: "spot1"),
            Picture(name: "spot2"),
            Picture(name: "spot3")
        ]
    }

    func remove(id: UUID) {
        _ = userData.firstIndex(where: { $0.id == id }).map { userData.remove(at: $0) }
    }
}
