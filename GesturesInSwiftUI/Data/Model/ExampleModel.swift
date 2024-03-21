//
//  ExampleItem.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import SwiftUI

struct ExampleModel<Destination: View>: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let destination: Destination
}

