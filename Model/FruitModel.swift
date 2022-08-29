//
//  FruitModel.swift
//  Fructus
//
//  Created by Ashish Dutt on 20/08/22.
//

import SwiftUI

// MARK: - Fruit data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
