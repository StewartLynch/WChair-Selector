//
//  CustomModifier.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-01-24.
//

import Foundation
import SwiftUI

struct HeaderStyle: ViewModifier {
    func body (content: Content) -> some View {
        content
            .foregroundColor(.primary)
            .font(.headline)
            .padding(60)
            .cornerRadius(40)
    }
}

extension View {
    public  func headerStyle() -> some View {
        modifier(HeaderStyle())
    }
}
