//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 23.11.2023.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headLine)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        FruitNutriensView(fruit: fruit)
                        
                        //Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                       
                            
                        
                        //Link
                        SourseLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                    }//VSTack
                    .padding(.horizontal, 20)
         
                }//VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//Scroll
            .edgesIgnoringSafeArea(.top)
            
        }//Navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
