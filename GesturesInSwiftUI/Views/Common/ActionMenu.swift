//
//  ActionMenu.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 25/03/2024.
//

import SwiftUI

struct ActionMenu: View {
    // MARK: - PROPERTIES
    @Binding var selectedAction: Action?
    
    // MARK: - BODY
    var body: some View {
        menuContent()
            .tint(.black)
    }
    
    private func menuContent() -> some View {
        ForEach(Action.allCases, id: \.self) { action in
            actionButton(for: action)
        }
    }
    
    private func actionButton(for action: Action) -> some View {
        Button(role: action == .delete ? .destructive: .none, action: {
            self.selectedAction = action
        }) {
            HStack {
                action.descriptionImage
                Text(action.description)
            }
        }
        
    }
}

// MARK: - PREVIEW
#Preview {
    ActionMenu(selectedAction: .constant(.edit))
}
