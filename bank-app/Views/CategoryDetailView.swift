//
//  CategoryDetailView.swift
//  bank-app
//
//  Created by Егор Терёшкин on 04.08.2024.
//

import SwiftUI

struct CategoryDetailView: View {
    
    let item: CategoryModel
    
    var body: some View {
        VStack {
            Text(item.title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.gray.opacity(0.25))
                    .frame(width: 260)
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(item.color)
                    .frame(width: CGFloat(item.percent) * 2.6)
            }
            .frame(height: 30)
        }
        .padding()
        .frame(width: 300, height: 300)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
