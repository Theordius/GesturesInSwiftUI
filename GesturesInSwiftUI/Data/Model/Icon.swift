//
//  Icon.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 29/03/2024.
//

import Foundation

import SwiftUI

struct Icon: Identifiable {
    let id: UUID = UUID()
    let name: String
    let color: Color
    let zIndex: Double

    init(
        name: String,
        color: Color,
        zIndex: Double
    ) {
        self.name = name
        self.color = color
        self.zIndex = zIndex
    }

    init(
        name: String,
        color: Color
    ) {
        self.name = name
        self.color = color
        self.zIndex = 0
    }

    init(
        name: String
    ) {
        let colors: [Color] = [
            .pink,
            .red,
            .cyan,
            .orange
        ]

        self.name = name
        self.color = colors.randomElement() ?? .blue
        self.zIndex = 0
    }
}
