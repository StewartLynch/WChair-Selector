//
//  Case1Button.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-01-24.
//

import SwiftUI

struct Case1Button: View {
   
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State var showSheet: Bool = false
   
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // CARD IMAGE
            Image("Wheelchair")
                .resizable()
                .scaledToFit()
                .padding(.top,15)
         
               

         
               // TITLE
               Text("Study Case I")
                   .font(.caption)
                   .font(.system(.body, design: .serif))
                   .foregroundColor(.secondary)
               
               
               // HEADLINE
               Text("Dementia")
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
           self.showSheet = true
       }
       .sheet(isPresented: self.$showSheet) {
          Case1View()
             .presentationDragIndicator(.visible)
       }
       .shadow(radius: 3)
    }
}

struct Case1Button_Previews: PreviewProvider {
    static var previews: some View {
        Case1Button()
          
    }
}
