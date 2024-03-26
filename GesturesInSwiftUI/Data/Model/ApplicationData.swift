//
//  ApplicationData.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 26/03/2024.
//

import Foundation

class ApplicationData: ObservableObject {

    @Published var userData: [Picture]
    @Published var selected: String?
    @Published var dropFrame: CGRect = CGRect.zero
    @Published var dropOver: Bool = false

    init() {
        userData = [
            Picture(image: "spot1"),
            Picture(image: "spot2"),
            Picture(image: "spot3")
        ]
    }


    func remove(id: UUID) {
        if let index = userData.firstIndex(where: { $0.id == id }) {
            userData.remove(at: index)
        }
    }
}
