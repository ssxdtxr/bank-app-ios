//
//  VisualBlurEffect.swift
//  bank-app
//
//  Created by Егор Терёшкин on 04.08.2024.
//

import SwiftUI

struct VisualBlurEffect: UIViewRepresentable {
    
    let uiVisualEffect: UIVisualEffect
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {
        UIVisualEffectView()
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) {
        uiView.effect = uiVisualEffect
    }
}
