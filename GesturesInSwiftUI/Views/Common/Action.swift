//
//  Action.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 25/03/2024.
//

import Foundation
import SwiftUI

enum Action: String, CaseIterable {
    case move
    case edit
    case delete

    var description: String {
        switch self {
        case .move:
            return "Move Action"
        case .edit:
            return "Edit Action"
        case .delete:
            return "Delete Action"
        }
    }
    
    var descriptionImage: Image {
        switch self {
        case .move:
            return Image(systemName: "move.3d")
        case .edit:
            return Image(systemName: "pencil")
        case .delete:
            return Image(systemName: "trash.circle")
        }
    }
}
