//
//  HomeWelcomeScreen.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-02-18.
//

import SwiftUI

struct HomeWelcomeSheetView: View {
    @State private var showDeveloperInfo = false
    var body: some View {
        ZStack {
            
            Form  {
                VStack (alignment:.leading,spacing: 10){
                    Text("Wheelchair  App has the following sections:")
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.title2)
                        .padding()
                    VStack (alignment: .leading, spacing: 0){
                        Text("Wheelchair Assessment: ")
                            .multilineTextAlignment(.leading)
                            .font(.headline)
                        Text("Collecting data of resident's needs , recommendations are provided by an algorithm")
                            .multilineTextAlignment(.leading)
                    }
                    VStack (alignment: .leading, spacing: 0){
                        Text("Wheelchair Catalog: ")
                            .multilineTextAlignment(.leading)
                            .font(.headline)
                        Text("Description of features of six  different type of wheelchairs")
                            .multilineTextAlignment(.leading)
                    }
                    VStack (alignment: .leading, spacing: 0){
                        Text("Terminology of wheelchair's parts:")
                            .multilineTextAlignment(.leading)
                            .font(.headline)
                        Text("Detailed information .")
                            .multilineTextAlignment(.leading)
                    }
                    
                    VStack (alignment: .leading, spacing: 0){
                        Text("Study Cases : ")
                            .multilineTextAlignment(.leading)
                            .font(.headline)
                        Text("Four Seating System Assessments and their recommendations")
                            .multilineTextAlignment(.leading)
                    }
                    VStack (alignment: .leading, spacing: 0){
                        Text("A Quiz : ")
                            .multilineTextAlignment(.leading)
                            .font(.headline)
                        Text("Self assessment about Seating System ")
                            .multilineTextAlignment(.leading)
                    }
                    VStack (alignment: .leading, spacing: 10){
                        Text("Welcome to My App!")
                            .font(.headline)
                            .padding(.top, 50)
                        Button(action: {
                            self.showDeveloperInfo = true
                        }, label: {
                            Text("About the Developer").foregroundColor(.primary)
                        })
                        
                        .buttonStyle(.borderedProminent).opacity(0.3)
                        .font(.headline)
                        .padding()
                        .cornerRadius(10)
                        
                    }
                    .sheet(isPresented: self.$showDeveloperInfo) {
                        DeveloperInfoSheetView()
                            .presentationDragIndicator(.visible)
                    }
                }
                
                
            }
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(.accentColor).opacity(0.3)
                .offset(x: 200, y: 400)
        }
    }
}

#Preview  {
    HomeWelcomeSheetView()
}

