//
//  CardModel.swift
//  bank-app
//
//  Created by Егор Терёшкин on 03.08.2024.
//

import Foundation
import SwiftUI

struct CardModel: Identifiable {
    let id = UUID().uuidString
    var colors: [Color]
    
    static let colors: [CardModel] = [
        CardModel(colors: [Color.red, Color.white]),
        CardModel(colors: [Color.blue, Color.white]),
        CardModel(colors: [Color.green, Color.white]),
        CardModel(colors: [Color.gray, Color.white])
        
    ]
}
