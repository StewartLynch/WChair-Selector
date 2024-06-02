//
//  StudyQuizButton.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-03-07.
//

import SwiftUI

struct StudyQuizButtonSheet: View {
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State var showSheet1: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            HStack {
                Image(.wheelchair)
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 15)
                
                
                
                VStack {
                    Text("Quiz")
                        .font(.headline)
                        .font(.system(.title, design: .serif))
                        .foregroundColor(.accentColor)
                        .fontWeight(.bold)
                        .padding()
                    
                    Text("Seating System")
                        .font(.caption)
                        .font(.system(.body, design: .serif))
                        .foregroundColor(.secondary)
                }
                
            }
          
               
            
        }
        .frame(width: 320, height:170)
        .background (Color.accentColor.opacity(0.2))
        .cornerRadius(20)
        .padding()
        .padding(.top, 40)
        .rotation3DEffect(
            .degrees(showSheet1 ? -180 : 0),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        .animation(.easeInOut, value: showSheet1)
        
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showSheet1 = true
        }
        
        .sheet(isPresented: self.$showSheet1) {
            StudyQuiz()
                .presentationDragIndicator(.visible)
        }
        .shadow(radius: 3)
        
        .presentationDetents([.medium, .large, .fraction(0.8), .height(200)])
    }
}

#Preview {
    StudyQuizButtonSheet()
    
}

