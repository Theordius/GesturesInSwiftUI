//
//  ExampleListView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 21/03/2024.
//

import SwiftUI

struct ExampleListView<Destination: View>: View {
    // MARK: - PROPERTIES
    let headerTitle: LocalizedStringKey
    let examples: [ExampleModel<Destination>]


    // MARK: - BODY
    var body: some View {
        List {
            Section(header: Text(headerTitle)) {
                ForEach(examples) { example in
                    NavigationLink(destination: example.destination) {
                        VStack(alignment: .leading) {
                            Text(example.title)
                            Text(example.subtitle)
                                .fontWeight(.thin)
                        }
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}

// MARK: - PREVIEW
struct ExampleListView_Previews: PreviewProvider {
    static var previews: some View {
        let exampleItems: [ExampleModel<AnyView>] = [
            ExampleModel(
                title: "Example 1",
                subtitle: "Subtitle",
                destination: AnyView(Text("Example 1 View"))
            )

        ]
        return ExampleListView(
            headerTitle: "Preview",
            examples: exampleItems
        )
    }
}
