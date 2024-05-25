//
//  WheelchairStdView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-02-13.
//

import SwiftUI

struct WheelchairStdView: View {
    
    @State var showSheet: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var isAnimated: Bool = false
    
    var wheelchair: Wheelchair
    
    var body: some View {
        ZStack {
            Color(.white).opacity(0.5)
            VStack(alignment: .center, spacing: 0) {
                // CARD IMAGE
                
                Image(wheelchair.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .scaleEffect(isAnimated ? 0.9 : 0.7)
                
                // TITLE
                VStack(alignment: .leading, spacing: 10) {
                    Text("Wheelchair Category")
                        .font(.headline)
                        .font(.system(.body, design: .serif))
                    
                    // HEADLINE
                    HStack {
                        Text(wheelchair.title)
                            .font(.title2)
                            .font(.system(.title, design: .serif))
                            .fontWeight(.bold)
                        
                        Text("(Tap)")
                            .foregroundColor(.blue)
                    }
                    
                    // HEADLINE
                    Text(wheelchair.headline)
                        .multilineTextAlignment(.leading)
                        .font(.body)
                }
                .foregroundColor(.primary)
                .padding()
                
            }
            .cornerRadius(20)
            
            .onAppear{
                withAnimation(Animation.linear(duration: 1.0).repeatCount(1)){
                    isAnimated.toggle()       }
            }
            .onTapGesture {
                self.hapticImpact.impactOccurred()
                self.showSheet = true
            }
            .sheet(isPresented: self.$showSheet) {
                WheelchairDetailView(wheelchair: wheelchairData[0])
                    .presentationDragIndicator(.visible)
            }
        }
        
        .background(Color.accentColor.opacity(0.3))
        .cornerRadius(20)
        .padding(.horizontal)
        .shadow(radius: 3, x: 3, y: 3)
        
        
    }
}

#Preview{
    WheelchairStdView(wheelchair: wheelchairData[0])
}

