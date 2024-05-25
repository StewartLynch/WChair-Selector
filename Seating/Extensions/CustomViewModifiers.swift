//
//  CustomViewModifiers.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-08-17.
//

import SwiftUI

struct Frame: ViewModifier {
    
    func body (content: Content) -> some View {
        content
        
            .frame( maxWidth: .infinity , maxHeight: .infinity, alignment: .leading)
            .foregroundColor(.black)
            .padding()
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 3)
    }
}

extension View {
    public  func marcoStyle() -> some View {
        modifier(Frame())
    }
}

