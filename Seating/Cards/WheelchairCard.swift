//
//  WheelchairCard.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-03-13.
//

import SwiftUI
import Observation

struct WheelchairCard: View {
    
    var clients = EnterDataProfile1()
    
    var body: some View {
        VStack (spacing: 20 ){
            Image("\(clients.getPic())")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .cornerRadius(5)
                .shadow(radius: 5)
                .padding(.top)
            
            VStack  (spacing: 20 ){
                Text(" \(clients.getStandard())")
                    .font(.system(size: 15, weight: .regular, design: .serif))
                    .multilineTextAlignment(.leading)
                
                Text("\(clients.getDescription())")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                
            }
        }
        
        .cornerRadius(5)
        .padding()
        
    }
}

#Preview {
    WheelchairCard()
}

