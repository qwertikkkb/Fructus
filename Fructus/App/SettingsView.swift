//
//  SettingsView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 24.11.2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentetionMode
    @AppStorage("isOnboarding") var isOnboarding = false
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //Section 1
                    GroupBox(
                        label: 
                         SettingsLabelView(
                            labelText: "Fructus",
                            labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruitsare naturally low in fat, sodium, and calories. Non have cholesterol. Fruits are sourses of many essential nutriens, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                            
                        }//HStack
                        
                    }//GroupBox
                    
                    //Section 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customizations", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can toggle the aplications by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                        }
                    
                    //Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Applications", labelImage: "apps.iphone"))
                    {
                     
                        
               SettingsRowView(name: "Developer", content: "qwertikkk")
               SettingsRowView(name: "Designer", content: "qwertikkk")
               SettingsRowView(name: "Compatibility", content: "iOs 17")
               SettingsRowView(name: "Version", content: "1.0")
               SettingsRowView(name: "website", linkLabel: "Apple", linkDestination: "http://apple.com")
                        
            }
                    
                    
                   
                }//VStack
                .navigationBarTitle(
                    Text("Settings"),
                    displayMode: .large)
                .navigationBarItems(
                trailing:
                    Button(action: {
                    presentetionMode.wrappedValue.dismiss()
                    }) {
                    Image(systemName: "xmark")
                    })
                .padding()
            }//Scroll
        }//Navigation
        
    }
}

#Preview {
    SettingsView()
}
