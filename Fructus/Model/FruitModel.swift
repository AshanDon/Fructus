//
//  FruitModel.swift
//  Fructus
//
//  Created by Ashan Anuruddika on 13/08/2022.
//

import Foundation
import SwiftUI


// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
