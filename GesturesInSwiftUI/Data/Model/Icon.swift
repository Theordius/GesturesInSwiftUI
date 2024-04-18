//
//  Icon.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 29/03/2024.
//

import Foundation

import SwiftUI

struct Icon: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let zIndex: Double

    private var colors: [Color] = [
        .pink,
        .red,
        .cyan,
        .orange
    ]

    init(
        name: String,
        color: Color? = nil,
        zIndex: Double = 0
    ) {
        self.name = name
        self.color = color ?? (colors.randomElement() ?? .blue)
        self.zIndex = zIndex
    }
}
