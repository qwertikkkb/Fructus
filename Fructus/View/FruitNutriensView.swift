//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 24.11.2023.
//

import SwiftUI

struct FruitNutriensView: View {
    
    
    var fruit: Fruit
    let nutrients: [String] = [
                               "Energy",
                               "Sugar",
                               "Fat",
                               "Protein",
                               "Vitamin",
                               "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrition value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//Box
        
      
    }
}

#Preview {
    FruitNutriensView(fruit: fruitsData[0])
}
