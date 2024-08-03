//
//  HomeView.swift
//  bank-app
//
//  Created by Егор Терёшкин on 03.08.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            Header()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(CardModel.colors) {
                        colors in VStack {
                            GeometryReader { geo in
                                CardView(colors: colors.colors)
                                    .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 15), axis: (x: 0, y: 1, z: 0))
                            }
                            .frame(width: 250, height: 250)
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
    
    @ViewBuilder
    
    private func Header() -> some View {
        HStack {
            Text("Welcome back, \nEgor!")
                .font(.system(size: 22, weight: .bold, design: .default))
            
            Spacer()
            
            ZStack {
                Circle()
                    .foregroundColor(Color.blue)
                
                Image("memoji")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            }.frame(width: 55, height: 55)
        }
        .padding([.trailing, .leading])
    }
}

#Preview {
    HomeView()
}
