//
//  CaseStadyHomeView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-04-30.
//

import SwiftUI

struct CaseStadyHomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                
                MotionAnimationView()
                
                ScrollView(showsIndicators: false) {
                    
                    Text("Review Cases")
                        .font(.title3)
                        .foregroundColor(.accentColor)
                    
                    HStack (spacing: -28){
                        Case1Button()
                        
                        Case2Button()
                    }
                    
                    
                    HStack(spacing: -28) {
                        Case3Button()
                        
                        Case4Button()
                    }
                    
                    HStack(spacing: -28) {
                        Case5Button()
                        
                        Case6Button()
                    }
                    
                }
                
            }
            .navigationBarTitle("Study Cases", displayMode: .inline)
            
        }
        
    }
}

#Preview  {
    CaseStadyHomeView()
}

