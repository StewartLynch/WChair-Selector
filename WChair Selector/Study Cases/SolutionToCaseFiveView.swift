//
//  SolutionToCaseFiveView.swift
//  WChair Selector
//
//  Created by Jaime Fagnilli on 2024-03-19.
//

import SwiftUI

struct SolutionToCaseFiveView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Form {
                VStack( alignment: .center, spacing: 20) {
                    
                    Image(.PWC)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                        .shadow(color : Color(red : 0, green : 0, blue : 0, opacity : 0.15), radius: 8, x : 6, y : 8)
                }
                
                VStack ( alignment: .leading, spacing: 20) {
                    Text("Type of wheelchair : Power Wheelchair")
                        .font(.title2)
                    Text("""
Wheelchair Recommendation:
For Mr. T.W., a power wheelchair with a high-back seat and customizable positioning options would be essential. This type of wheelchair would provide the necessary support for his trunk and promote proper alignment, reducing the risk of postural deformities and pressure injuries. Additionally, tilt-in-space and recline functions would allow for pressure relief and comfort during extended periods of sitting.

Cushion Recommendation:
Given Mr. T.W.'s history of SCI and impaired trunk control, a pressure-relieving cushion with multi-layered foam and gel inserts would be suitable. A cushion with contouring and pelvic stability features would help maintain proper alignment and distribute pressure evenly, reducing the risk of skin breakdown. An example would be a Jay® J2 Deep Contour Cushion, which offers optimal immersion and pressure redistribution for individuals with complex seating needs.
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
    SolutionToCaseFiveView()
}
