//
//  TerminologyHeaderView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-05.
//

import SwiftUI

struct TerminologyHeaderView: View {
    @State private var isAnimatingImage: Bool = false
    
    var terminology: Terminology
    
    var body: some View {
        ZStack {
            
            Image(terminology.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 8, x: 6, y: 8)
                .padding()
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        
        .onAppear() {
            withAnimation(.spring(response: 1.5, dampingFraction: 0.3, blendDuration: 1.5)) {
                isAnimatingImage = true
                
            }
        }
    }
}

#Preview {
    TerminologyHeaderView(terminology: terminologyData[1])
}

