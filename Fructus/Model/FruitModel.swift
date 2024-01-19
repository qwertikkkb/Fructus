//
//  FruitModel.swift
//  Fructus
//
//  Created by Nicolai Bodean on 21.11.2023.
//

import SwiftUI


//Mark - Fruits data model

struct Fruit: Identifiable {
    var id =            UUID()
    var title:          String
    var headLine:       String
    var image:          String
    var gradientColors: [Color]
    var description:    String
    var nutrition:      [String]
}


