//
//  AppInformationRow.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct AppInformationRow: View {
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                
                Spacer()
                
                if let content {
                    Text(content)
                } else if let linkLabel, let linkDestination, let url = URL(string: "https://\(linkDestination)") {
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.yellow)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    AppInformationRow(name: "John Doe")
}
