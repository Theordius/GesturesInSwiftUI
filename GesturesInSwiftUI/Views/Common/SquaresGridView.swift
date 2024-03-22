//
//  SquaresGridView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct SquaresGridView: View {
   
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        Grid {
            SquaresGridRow(colors: [.red, .green, .blue])
            SquaresGridRow(colors: [.yellow, .purple, .cyan])
            SquaresGridRow(colors: [.brown, .orange, .blue])
        }
        .opacity(0.85)
    }
}

// MARK: - PREVIEW
struct SquaresGridView_Previews: PreviewProvider {
    static var previews: some View {
        SquaresGridView()
    }
}
