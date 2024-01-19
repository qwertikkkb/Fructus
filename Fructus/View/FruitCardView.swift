//
//  FruitCardView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 20.11.2023.
//

import SwiftUI

struct FruitCardView: View {
    //Mark - Properties
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    

    
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //Fruit - Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(
                        red: 0,
                        green: 0,
                        blue: 0,
                        opacity: 0.15),
                        radius: 8,
                        x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //Fruit - Title
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(
                        red: 0,
                        green: 0,
                        blue: 0),
                        radius: 2,
                        x: 2, y: 2)
                
                
                //Fruit - Headline
                Text(fruit.headLine)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //Button - Start
                StartButtonView()
                
            }//VStack
        }// ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center)
        .background(
            LinearGradient(gradient:
                            Gradient(colors: fruit.gradientColors),
                            startPoint: .top,
                            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}
//Mark - Preview
#Preview {
    FruitCardView(fruit: fruitsData[0])
}
