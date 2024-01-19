//
//  ContentView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 20.11.2023.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings = false
    
    var body: some View {
        
            NavigationView {
                List {
                    ForEach(fruits.shuffled()) { item in
                        NavigationLink(destination: FruitDetailView(fruit: item)) {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        }
                    }
                }
                .navigationTitle("Fruits")
                .navigationBarItems(
                    trailing:
                        Button(action: {
                        isShowingSettings = true
                }) {
                        Image(systemName: "slider.horizontal.3")
                })//Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }//Navigation
            .navigationViewStyle(StackNavigationViewStyle())
        

    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
