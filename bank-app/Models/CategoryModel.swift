//
//  CategoryModel.swift
//  bank-app
//
//  Created by Егор Терёшкин on 04.08.2024.
//

import Foundation
import SwiftUI

struct CategoryModel: Identifiable {
    
    let id = UUID().uuidString
    
    let title: String
    let color: Color
    let percent: Int
    
    static let categories = [
        CategoryModel(title: "Goods", color: Color.red, percent: 45),
        CategoryModel(title: "Transport", color: Color.blue, percent: 30),
        CategoryModel(title: "Edication", color: Color.green, percent: 15),
        CategoryModel(title: "Other", color: Color.gray, percent: 20)
    ]
}
