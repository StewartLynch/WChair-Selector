//
//  StudyQuizButton.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-03-07.
//

import SwiftUI

struct StudyQuizButton: View {
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
   @State var showSheet1: Bool = false
    
   var body: some View {
         
           VStack(alignment: .leading, spacing: 0) {
               // CARD IMAGE
               Image("Wheelchair")
                   .resizable()
                   .scaledToFit()
                   .padding(.top, 15)
               
             
                   // TITLE
                   Text("Seating System")
                       .font(.caption)
                       .font(.system(.body, design: .serif))
                       .foregroundColor(.secondary)
                   
                   
                   // HEADLINE
                   Text("Quiz")
                       .font(.headline)
                       .font(.system(.title, design: .serif))
                       .foregroundColor(.accentColor)
                       .fontWeight(.bold)
                       .padding()
           }
           .frame(width: 190, height:200)
           .background (Color.white.opacity(0.8))
           .cornerRadius(20)
           .padding()
       
       .onTapGesture {
           self.hapticImpact.impactOccurred()
           self.showSheet1 = true
       }

       .sheet(isPresented: self.$showSheet1) {
        StudyQuiz()
       }
       .shadow(radius: 3)
   }
}

struct StudyQuizButton_Previews: PreviewProvider {
    static var previews: some View {
        StudyQuizButton()
           
    }
}
