//
//  Case4View.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-08-03.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct Case4View: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showSheet: Bool = false
    var body: some View {
        ZStack (alignment: .topTrailing)  {
            Form {
                VStack (spacing: 20) {
                    Text(studyCase[3])
                        .multilineTextAlignment(.leading)
                }
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Wheelchair recommended")
                        .frame(width: 180, height: 50)
                        .font(.headline)
                        .foregroundColor(.accentColor)
                        .background(Color.white.cornerRadius(10))
                        .shadow(radius: 10)
                })
                .fullScreenCover(isPresented: $showSheet, content: {
                    
                    SolutionToCaseFourView()
                })
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

#Preview  {
    Case4View()
    
}

