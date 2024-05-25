//
//  TerminologyRowView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-05.
//

import SwiftUI

struct TerminologyRowView: View {
    
    var terminology: Terminology
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(terminology.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                    .frame(width: 50, height: 50, alignment: .leading)
                
                
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 9, x: 9, y: 5)
                
                    .padding()
                
                Text(terminology.title)
                
                    .font(.subheadline)
                    
            }.padding()
        }
    }
}

struct TerminologyRowView_Previews: PreviewProvider {
    static var previews: some View {
        TerminologyRowView(terminology: terminologyData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
