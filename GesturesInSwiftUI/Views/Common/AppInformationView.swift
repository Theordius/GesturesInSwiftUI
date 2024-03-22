//
//  AppInformationView.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import SwiftUI

struct AppInformationView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground(colors: [.blue, .gray, .white], opacity: 1.0)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        
                        //MARK: - SECTION 1
                        
                        GroupBox(
                            label: AppInformationLabelView(labelText: "About the Application", labelImage: "questionmark.circle")
                        ) {
                            
                            Divider().padding(.vertical, 4)
                            
                            HStack(alignment: .center, spacing: 10) {
                                
                                Text("This application was built with SwiftUI without usage of 3rd party libraries mostly for educational purposes and to show various possibilities of using gestures with swift UI")
                                    .italic()
                                    .multilineTextAlignment(.leading)
                                    .font(.footnote)
                                
                            }
                            .padding()
                            .background(
                                Color(.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        }
                        
                        //MARK: - SECTION 2
                        
                        GroupBox(
                            label: AppInformationLabelView(labelText: "Application", labelImage: "apps.iphone")
                        ) {
                            AppInformationRow(name: "Developer", content: "Rafal Gesior")
                            AppInformationRow(name: "Compability", content: "iOS 17")
                            AppInformationRow(name: "Website", linkLabel: "Not provided", linkDestination: "")
                            AppInformationRow(name: "SwiftUI", content: "5.9")
                            AppInformationRow(name: "App Version", content: "1.0")
                            
                        } //: BOX
                    } //: VSTACK
                    .navigationBarTitle(Text("Information"), displayMode: .large)
                    .navigationBarItems(
                        trailing:
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            })
                        {
                            Image(systemName: "xmark")
                        }
                    )
                    .padding()
                }
            } //: SCROLL
        } //: NAVIGATION
        .preferredColorScheme(.dark)
        .tint(.white)
    }
}

// MARK: - PREVIEW
#Preview {
    AppInformationView()
}
