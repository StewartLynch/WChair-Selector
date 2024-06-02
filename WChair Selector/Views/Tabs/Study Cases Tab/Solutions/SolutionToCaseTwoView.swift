//
//  SolutionToCaseTwoView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseTwoView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Form {
                VStack {
                    
                    Image("TIS")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .leading)
                    .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)}
                
                VStack (spacing: 20) {
                    Text("Type of wheelchair : Manual Tilt Back in Space").font(.title2)
                    Text("""
Dimensions: 18 inches width  x 18 inches depth  x 16 inches heigh floor to seat
       
Contour back seat with moderate
lateral support
Head rest
Flip up foot rest swingaway and detachable
Anti-tippers
Solid Seat with abductor pommel attached
HP ROHO cushion with incontinent cover
250 Pound Weight Capacity.
       
Based on resident's deficits and needs:
       
A wheelchair with the power tilt (tilt-in-space) feature allows the whole chair to tilt up to 30 or 60 degrees, depending on the model,
while maintaining your hip and knee angles at 90 degrees.
Tilt-in-space can actually provide even more comfort than a reclining system in the way it helps maintain posture and body alignment
and helps to prevent shear effect and manage pressure redistribution.
       
An abductor pommel was installed to prevent resident landing on the floor due to inefective one leg propelling ,
it makes resident slides frequently and put him a high risk of falling from wheelchair, resident has history of falls from wheelchair.
       
A HP ROHO cushion was provided due to resident has history of skin breakdown and currently presents with a pressure ulcer stage II on cocyx
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
    SolutionToCaseTwoView()
}

