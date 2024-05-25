//
//  DeveloperInfoView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-02-19.
//

import SwiftUI

struct DeveloperInfoView: View {
    let developer = Developer(name: "Jaime Fagnilli", email: "fagnillij@gmail.com", website: "https://wordpress.com/view/rehabchile.wordpress.com", bio: "I am an Occupational Therapist, passionate with developing apps for OT Students", language: "SWIFT UI", projects: "Wheelchair Selector App/Mattress Selector App/Swallowing App/Cushion Selector App/Splint Selector App")
    var body: some View {
      
       
     ZStack {
       
          Form {
                VStack {
                    VStack {
                        Image(.me)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.bottom, 20)
                        Text(developer.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                    }
                    
                    VStack  (alignment:.leading, spacing: 20){
                        Text("BIO: ")
                            .fontWeight(.bold)
                        
                        Text(developer.bio)
                            .font(.body)
                        
                        Text("LANGUAGE:")
                            .fontWeight(.bold)
                        Text(developer.language)
                            .font(.body)
                        
                        Text("PROJECTS:")
                            .fontWeight(.bold)
                        Text(developer.projects)
                            .font(.body)
       
                        Text("EMAIL:")
                            .fontWeight(.bold)
                        Text(developer.email)
                            .font(.body)
                        
                        
                        
                        Text("WEBSITE:")
                            .fontWeight(.bold)
        
                        Link(destination: URL(string: developer.website)!) {
                            Image(systemName: "globe")

                            Text("Wordpress")

                        }
                        .foregroundColor(.primary)
                        .padding()
                        .background(Color.accentColor).opacity(0.3)
                        .cornerRadius(10)
                    }
                    .padding()
                    
                }
            }
       
         Circle()
            .frame(width: 300, height: 300)
            .foregroundColor(.accentColor).opacity(0.3)
            .offset(x: 200, y: 400)
        }
    }
}

#Preview {
        DeveloperInfoView()
    }

