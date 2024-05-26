//Users/jaimefagnilli/Desktop/Desktop Folder/Apps for OT Students/Seating App/Seating/Arrays/StudyCasesArray.swift/
//  HomeView.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-25.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var home: [Home] = homeData
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State var showSheet: Bool = false
    
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        
        ZStack {
            
            MotionAnimationView()
            
            HStack (spacing: 10){
                Text ("Scroll")
                Image(systemName: "arrow.right.circle")
            }
            .fontDesign(.serif)
            .foregroundColor(.accentColor)
            .padding(.bottom, 650)
            .offset(x: 0, y: showHeadline ? 5 : 20)
            .animation(slideInAnimation, value: showHeadline)
            .onAppear(perform: {
                showHeadline = true
            })
            .onDisappear(perform: {
                showHeadline = false
            })
            
            
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing : 0){
                        
                        ForEach(home) { item in
                            HomeCardiew (home: item)
                                .containerRelativeFrame(.horizontal)
                                .scrollTransition(axis: .horizontal ){ effect, phase in
                                    effect
                                        .opacity(phase.isIdentity ? 1 : 0)
                                        .scaleEffect(phase.isIdentity ? 1 : 0.5)
                                }
                        }
                    }
                    .padding(.top, 195)
                    .padding(.horizontal, 0)
                }
                .scrollTargetBehavior(.paging)
                .contentMargins(5, for: .scrollContent)
                
                VStack {
                    
                    VStack {
                        Text("Wheelchair Application")
                            .fontDesign(.serif)
                            .font(.system(size: 20))
                            .foregroundColor(Color.accentColor)
                        
                        Text("For OT Students In LTC")
                        
                            .font(.caption)
                            .foregroundColor(Color.accentColor)
                        
                        VStack {
                            Text("Tap Here to Learn")
                                .fontDesign(.serif)
                                .font(.caption)
                            
                                .foregroundColor(Color.accentColor)
                            Text("About this App")
                                .fontDesign(.serif)
                                .font(.caption)
                                .foregroundColor(Color.accentColor)
                        }
                        
                    }.padding(.bottom, 160)
                        .offset(x: 0, y: showHeadline ? 5 : 20)
                        .animation(slideInAnimation, value: showHeadline)
                        .onAppear(perform: {
                            showHeadline = true
                        })
                        .onDisappear(perform: {
                            showHeadline = false
                        })
                    
                }
                .onTapGesture {
                    self.hapticImpact.impactOccurred()
                    self.showSheet = true
                }
                .sheet(isPresented: self.$showSheet) {
                    HomeWelcomeScreen()
                }
            }
        }
    }
}

#Preview {
    HomeView()
    
}

