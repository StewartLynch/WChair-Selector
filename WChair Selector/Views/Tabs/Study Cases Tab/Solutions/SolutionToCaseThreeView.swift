//
//  SolutionToCaseThreeView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseThreeView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Form  {
                VStack ( alignment: .center, spacing: 20){
                    
                    Image(.HTR)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .leading)
                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)}
                
                VStack ( alignment: .leading, spacing: 20) {
                    
                    Text("Type of wheelchair : HTR")
                        .font(.title2)
                    Text("""
Dimensions: 16 inches width  x 18 inches depth  x 20 inches heigh floor to seat

Anti-tippers
Tilt adjustment positions the user for improved tolerance and functionality.
Sliding seat pan for easy seat-depth adjustment.
Deeply contoured seat and back cushions enhance comfort.
Fold-down back facilitates transfers and personal grooming.
250 Pound Weight Capacity.
                    
Based on resident's deficits and needs:
                    
HTR Tilt & Recline Wheelchair is loaded with features such as tilt and recline capabilities, smooth and effortless operation and optimal positioning.
In addition to these features they offer maximum, safety for patients and caregivers. Manage poor head and trunk control, reduces pressure on bottom area
                    
Extra padding, uniform leg rest system in an HTR wheelchair helps with people with severe contractures on lower extremities that cannot be addressed
by a Tilt Back in Space type of wheelchair.
""").multilineTextAlignment(.leading)
                    
                }
            }
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.4))
                        .frame(width: 40, height: 40)
                    Image(systemName: "xmark")
                        .foregroundColor(.accentColor)
                        .font(.headline)
                        .padding(10)
                }.padding()
            })
            Circle()
                .fill(Color.accentColor).opacity(0.2)
                .frame(width: 200, height: 200)
                .offset(x: -90, y: 730)
        }
    }
}

#Preview {
    SolutionToCaseThreeView()
    
    
}

