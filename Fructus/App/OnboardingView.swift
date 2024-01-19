//
//  OnboardnigView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 21.11.2023.
//

import SwiftUI

struct OnboardingView: View {
    //Mark - Properties
    
    var fruits: [Fruit] = fruitsData

    
    //Mark - Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
              
            }
        }// Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
