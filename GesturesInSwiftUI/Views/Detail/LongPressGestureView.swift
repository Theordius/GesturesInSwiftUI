//
//  LongPressGesture.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 25/03/2024.
//

import SwiftUI

struct LongPressGestureView: View {
    
    // MARK: - PROPERTIES
    let gridColors: [[Color]] = [
        [.green, .blue, .red, .cyan]
    ]
    
    @State private var selectedIndexPath: IndexPath?
    @State private var selectedAction: Action?
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            GradientBackground(colors: [.black, .gray], opacity: 0.85)
            
            ForEach(gridColors.indices, id: \.self) { rowIndex in
                let colors = gridColors[rowIndex]
                Grid {
                    SquaresGridRow(colors: colors)
                        .onLongPressGesture {
                            selectedIndexPath = IndexPath(item: 0, section: rowIndex)
                            selectedAction = nil
                        }
                        .contextMenu {
                            if let selectedIndexPath = selectedIndexPath, selectedIndexPath.section == rowIndex {
                                ActionMenu(selectedAction: $selectedAction)
                            }
                        }
                        .id(rowIndex)
                }
            }
        }
        
        .onChange(of: selectedAction) {
            if let action = selectedAction, let indexPath = selectedIndexPath {
                print("The action \(action.description) was pressed on row \(indexPath.section)")
            }
        }
    }
}



// MARK: - PREVIEW
#Preview {
    LongPressGestureView()
}
