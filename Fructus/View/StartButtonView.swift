//
//  StartButtonView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 20.11.2023.
//

import SwiftUI

struct StartButtonView: View {
    //Mark - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //Mark - Body
    var body: some View {
        Button(action: {
           isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(
                    Color.white,
                    lineWidth: 1.25))
        })//Button
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
}
