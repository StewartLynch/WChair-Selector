//
//  SolutionToCaseSixView.swift
//  WChair Selector
//
//  Created by Jaime Fagnilli on 2024-03-19.
//

import SwiftUI

struct SolutionToCaseSixView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            Form {
                VStack( alignment: .center, spacing: 20) {
                    
                    Image(.wheelchair)
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
For Mrs. L.S., a manual wheelchair with a high-back seat and adjustable lumbar support would be beneficial. This type of wheelchair would provide the necessary trunk support and postural stability, helping to minimize falls and improve overall mobility. Additionally, lightweight and foldable features would enhance portability and ease of transportation.

Cushion Recommendation:
Given Mrs. L.S.'s history of PD and postural instability, a pressure-relieving cushion with contouring and positioning features would be suitable. A cushion with firm support and coccyx cutout would help maintain proper alignment and reduce the risk of pressure ulcers, especially during prolonged sitting periods. An example would be a Vicair® Adjuster Cushion, which offers individualized comfort and support for individuals with complex seating needs.
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
    SolutionToCaseSixView()
}
