//
//  HomeCardiew.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-02-04.
//

import SwiftUI

struct HomeCardiew: View {
    
    var home: Home
    var hapticImpact = UIImpactFeedbackGenerator (style: .heavy)
    @State private var showModal: Bool = false
    @State private var isPresentingActionSheet = false
    
    var body: some View {
        ZStack {
//            MotionAnimationView()
            VStack (alignment: .center, spacing: 10){
                
                Image(home.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 370, height: 400, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red:450/255, green: 450/255, blue: 450/255),Color(red: 250/255, green:250/255, blue: 250/255)]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3))
                    .cornerRadius(25)
                    .shadow(color: Color.gray, radius: 3, x: 5, y: 3)
                    .onTapGesture {
                        isPresentingActionSheet = true
                    }
                    .sheet(isPresented: $isPresentingActionSheet) {
                        FactsViewOneSheetView()
                    }
                
                
                VStack(alignment: .center) {
                    Link(home.title, destination: URL (string: home.link)!)
                        .fontDesign(.serif)
                        .font(.title3)
                        .padding()
                        .frame(width: 280, height: 90)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(red:450/255, green: 450/255, blue: 450/255),Color(red: 250/255, green:250/255, blue: 250/255)]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3))
                        .cornerRadius(20)
                        .shadow(color: Color.gray , radius: 3, x: 5, y: 3)
                        .padding()
                        .offset(y: 5)
                }
            }
            .onTapGesture {
                self.hapticImpact.impactOccurred()
                self.showModal = true
            }
        }
    }
}

#Preview  {
    HomeCardiew(home: homeData[2])
}

