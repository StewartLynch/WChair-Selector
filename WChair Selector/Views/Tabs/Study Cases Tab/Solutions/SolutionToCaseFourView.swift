//
//  SolutionToCaseFourView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseFourView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Form {
                VStack( alignment: .center, spacing: 20) {
                    
                    Image(.broda)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                        .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)
                }
                
                VStack ( alignment: .leading, spacing: 20) {
                    Text("Type of wheelchair : BRODA Chair")
                        .font(.title2)
                    Text("""
Dimensions: 16 inches width  x 20 inches depth  x 22 inches heigh floor to seat
                    
Tilt and recline adjustment positions the user for improved tolerance and functionality.
Anti-tippers
Sliding seat pan for easy seat-depth adjustment.
Deeply contoured seat and back cushions enhance comfort.
                    
Based on resident's deficits and needs:
                    
Resident was candidate for a HTR wheelchair type, however  , resident has funding available for him due to MVA,
insurance company funding a more adequate seating system to address resident's needs.
                    
BRODA offers tilt-in-space positioning chairs with the Comfort Tension Seating® system prevents skin breakdown
through reducing heat and moisture Decreased postural control.
                    
At risk of skin breakdown and/or decreased skin integrity. Musculoskeletal deformities/conditions and other medical
conditions which prevent proper positioning when seated in a non-tilting wheelchair (i.e., kyphosis or lordosis)
""")
                    .multilineTextAlignment(.leading)
                    
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
    SolutionToCaseFourView()
}

