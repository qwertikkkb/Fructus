//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 23.11.2023.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimatingImage = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: 
                            Gradient(
                                colors: fruit.gradientColors),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: 
                            Color(
                                red: 0,
                                green: 0,
                                blue: 0,
                                opacity: 0.15),
                                radius: 8,
                                x: 6,
                                y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
        }//ZSTack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
