//
//  Case5Button.swift
//  WChair Selector
//
//  Created by Jaime Fagnilli on 2024-03-19.
//

import SwiftUI

struct Case5Button: View {
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State var showSheet: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            Image(.wheelchair)
                .resizable()
                .scaledToFit()
                .padding(.top, 15)
            // TITLE
            Text("Study Case V")
                .font(.caption)
                .font(.system(.body, design: .serif))
                .foregroundColor(.secondary)

            // HEADLINE
            Text("Spinal Cord Injury")
                .font(.headline)
                .font(.system(.title, design: .serif))
                .foregroundColor(.accentColor)
                .fontWeight(.bold)
                .padding()
        }
        .frame(width: 170, height:180)
        .background(
            Color.accentColor.cornerRadius(10).opacity(0.2)
                .shadow(color: .black, radius: 03, x: 3, y: 5)
        )
        .padding()
        .rotation3DEffect(
            .degrees(showSheet ? -180 : 0),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .animation(.easeInOut, value: showSheet)
        
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showSheet = true
        }
        .sheet(isPresented: self.$showSheet) {
            Case5View()
                .presentationDragIndicator(.visible)
        }
        .shadow(radius: 3)
    }
}

#Preview {
    Case5Button()
}
