//
//  CardView.swift
//  bank-app
//
//  Created by Егор Терёшкин on 03.08.2024.
//

import SwiftUI

struct CardView: View {
    
    var colors: [Color]
    
    var body: some View {
        ZStack {
            
            VStack(alignment: .leading) {
                Text("ssxdtxr")
                    .font(.system(size: 19, weight: .semibold, design: .default))
                
                Spacer()
                
                HStack {
                    Text("8547 ••••")
                    
                    Spacer()
                    
                    Image("masterCard")
                }
            }
            .padding()
            
        }
        .frame(width: 242, height: 153)
        .background(LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing))
        .cornerRadius(15)
        .shadow(color: .blue.opacity(0.2), radius: 5, x: 4, y: 4)
        .padding()
    }
}

#Preview {
    CardView(colors: [Color.orange, Color.yellow])
}
