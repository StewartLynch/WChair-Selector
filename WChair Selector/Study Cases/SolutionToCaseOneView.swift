//
//  SolutionToCaseOneView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2021-01-03.
//  Copyright © 2021 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct SolutionToCaseOneView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack (alignment: .topTrailing){
            
            Form {
                VStack {
                    Image(.STD)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .leading)
                        .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)
                }
                
                VStack (spacing: 20) {
                    
                    Text("Type of wheelchair: Manual STD wheelchair")
                        .font(.title3)
                        .padding()
                    
                    Text("""
Dimensions: 18 inches width x 19 inches depth x 17 inches heigh floor to seat
    
Adjustable height arm rest
Standard back seat: 18 inches height
Flip up foot rest swing away and detachable
Anti-tippers
Contour multilayer foam cushion
Chair alarm installed
Anti rolling back system
250 Pound Weight Capacity.
    
Based on resident's deficits and needs:
    
A STD manual wheelchair is recommended, Wheelchair provides the user the freedom to move around,
allowing the user to access day to day physical activity as they push around conducting activities of daily living.
    
Anti rolling back system provides the necessary stability while performing sit stand or transfers activities,
resident has demonstrated no awareness of risk of fall when brake system is not activated, resident unable to recall safety instructions at this time.
    
Contour multilayer cushion provides support to manage passive sliding and assist in an adequate posture when sitting in a wheelchair for hours.
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
    SolutionToCaseOneView()
}

