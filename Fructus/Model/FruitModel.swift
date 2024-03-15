//
//  FruitModel.swift
//  Fructus
//
//  Created by Ricardo Sousa on 23/02/2024.
//

import SwiftUI

// MARK: - FRUITS DATA MOVEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
