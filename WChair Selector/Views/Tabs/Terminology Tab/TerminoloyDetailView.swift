//
//  TerminoloyDetailView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-05.
//

import SwiftUI

struct TerminoloyDetailView: View {
    var terminology: Terminology
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Form {
                    
                    VStack(alignment: .center, spacing: 20) {
                        
                        TerminologyHeaderView(terminology: terminology)
                            .padding(.top, 40)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            Text(terminology.title)
                                .font(.headline)
                                .padding(.leading)
                                .multilineTextAlignment(.leading)
                            Text(terminology.definition)
                            
                        }
                    }
                }
                
                
                Circle()
                    .fill(Color.accentColor).opacity(0.2)
                    .frame(width: 300, height: 300)
                    .offset(x: 200, y: 430)
            }
            
        }
        
    }
}

#Preview  {
    TerminoloyDetailView(terminology: terminologyData[0])
}

