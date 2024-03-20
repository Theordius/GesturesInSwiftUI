//
//  SquaresGrid.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct SquaresGridRow: View {
    // MARK: - PROPERTIES
    let colors: [Color]
    let dimension: CGFloat
    let cornerRadius: CGFloat
    
    init(
        colors: [Color],
        dimension: CGFloat = 50,
        cornerRadius: CGFloat = 5
    ) {
        self.colors = colors
        self.dimension = dimension
        self.cornerRadius = cornerRadius
    }
    
    // MARK: - BODY
    var body: some View {
            GridRow {
                ForEach(colors, id: \.self) { color in
                  color
                        .frame(
                            width: dimension,
                            height: dimension
                        )
                        .clipShape(
                            .rect(cornerRadius: cornerRadius)
                        )
            }
        }
    }
}

// MARK: - PREVIEW

#Preview {
    Grid {
        SquaresGridRow(
            colors: [
                .red,
                .green,
                .blue,
                .green
            ]
        )
    }
}

