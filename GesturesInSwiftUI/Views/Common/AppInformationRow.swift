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
                
                if (content != nil) {
                    Text(content ?? "Error")
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel ?? "Link was not provided", destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.yellow)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    AppInformationRow(name: "John Doe")
}
