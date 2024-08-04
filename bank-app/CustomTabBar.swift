//
//  CustomTabBar.swift
//  bank-app
//
//  Created by Егор Терёшкин on 04.08.2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case creditcard
    case gearshape
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .foregroundColor(selectedTab == tab ? .black : .gray)
                        .scaleEffect(selectedTab == tab ? 1.2 : 1)
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                selectedTab = tab
                            }
                        }
                    
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.white)
            .cornerRadius(20)
            .padding()
        }
    }
}
