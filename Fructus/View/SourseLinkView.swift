//
//  SourseLinkView.swift
//  Fructus
//
//  Created by Nicolai Bodean on 23.11.2023.
//

import SwiftUI

struct SourseLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "http://wikipedia.com")!)
                Image(systemName: "arrow.up.square")
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    SourseLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
