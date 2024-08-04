//
//  CategoryView.swift
//  bank-app
//
//  Created by Егор Терёшкин on 04.08.2024.
//

import SwiftUI

struct CategoryView: View {
    
    let item: CategoryModel
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
            VStack(alignment: .leading) {
                Text(item.title)
                
                Spacer()
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.gray.opacity(0.25))
                        .frame(width: 130)
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(item.color)
                        .frame(width: CGFloat(item.percent) * 1.3)
                }
                .frame(height: 15)
            }
            .padding()
        }
        .frame(width: 160, height: 100)
        .shadow(radius: 2, x: 2, y:2)
        
        
    }
}

#Preview {
    CategoryView(item: CategoryModel(title: "Goods", color: Color.red, percent: 45))
}
