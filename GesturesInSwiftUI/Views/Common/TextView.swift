//
//  TextView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 20/03/2024.
//

import SwiftUI

struct TextView: View {

    // MARK: - PROPERTIES
    let text: LocalizedStringKey
    let backgroundColor: Color
    let foregroundColor: Color
    let cornerRadius: CGFloat


    // MARK: - BODY
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(foregroundColor)
            .padding()
            .background(backgroundColor)
            .clipShape(
                .rect(cornerRadius: cornerRadius)
            )
    }
}

// MARK: - PREVIEW
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(
            text: "Drag me!",
            backgroundColor: .black,
            foregroundColor: .orange,
            cornerRadius: 10
        )
    }
}
