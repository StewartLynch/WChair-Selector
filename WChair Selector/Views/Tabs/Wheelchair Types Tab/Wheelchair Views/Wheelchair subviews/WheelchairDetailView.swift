//
//  WheelchairDetailView.swift
//  wheelchair (iOS)
//
//  Created by Jaime Fagnilli on 2020-12-04.
//

import SwiftUI

struct WheelchairDetailView: View {
    
    var wheelchair: Wheelchair
    
    var body: some View {
        
        NavigationView {
           
           ZStack {
             
       Form  {
                   VStack(alignment: .center, spacing: 20) {
                       
                       WheelchairHeaderView(wheelchair: wheelchair)
                          
                       VStack(alignment: .leading, spacing: 20) {
                           Text(wheelchair.title)
                               .font(.title2)
                               .fontWeight(.heavy)
                               .foregroundColor(.primary)
                           Text(wheelchair.headline)
                               .font(.body)
                               .multilineTextAlignment(.leading)
                           Text("Learn more about".uppercased())
                               .fontWeight(.bold)
                               .foregroundColor(.primary)
                           Link (wheelchair.title, destination: URL (string: wheelchair.link)!)
                           Text(wheelchair.description)
                               .multilineTextAlignment(.leading)
                               
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
        WheelchairDetailView(wheelchair: wheelchairData[0])
        
    }

