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
    @State private var scrollID: Int?
    @State private var currentItemn = 0
    //    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            MotionAnimationView()
            //            HStack (spacing: 10){
            //                Text ("Scroll")
            //                Image(systemName: "arrow.right.circle")
            //            }
            //            .fontDesign(.serif)
            //            .foregroundColor(.accentColor)
            //            .padding(.bottom, 650)
            //            .offset(x: 0, y: showHeadline ? 5 : 20)
            //            .animation(slideInAnimation, value: showHeadline)
            //            .onAppear(perform: {
            //                showHeadline = true
            //            })
            //            .onDisappear(perform: {
            //                showHeadline = false
            //            })
            ScrollView {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing : 0){
                            ForEach(0..<home.count, id: \.self) { index in
                                let item = home[index]
                                HomeCardiew (home: item)
                                    .containerRelativeFrame(.horizontal)
                                    .scrollTransition(axis: .horizontal ){ effect, phase in
                                        effect
                                            .opacity(phase.isIdentity ? 1 : 0)
                                            .scaleEffect(phase.isIdentity ? 1 : 0.5)
                                    }
                            }
                        }
                        .scrollTargetLayout()
                        //                        .padding(.top, 125)
                        .padding(.horizontal, 0)
                    }
                    .scrollPosition(id: $scrollID)
                    .scrollTargetBehavior(.paging)
                    .contentMargins(5, for: .scrollContent)
                    Indicators(itemCount: home.count, currentItem: $currentItemn, index: scrollID ?? 0, scrollID: $scrollID)
                    
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
                            Spacer()
                        }.padding(.bottom, 160)
                        //                        .offset(x: 0, y: showHeadline ? 5 : 20)
                        //                        .animation(slideInAnimation, value: showHeadline)
                        //                        .onAppear(perform: {
                        //                            showHeadline = true
                        //                        })
                        //                        .onDisappear(perform: {
                        //                            showHeadline = false
                        //                        })
                    }
                    .onTapGesture {
                        self.hapticImpact.impactOccurred()
                        self.showSheet = true
                    }
                    .sheet(isPresented: self.$showSheet) {
                        HomeWelcomeSheetView()
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

struct Indicators: View {
    let itemCount: Int
    @Binding var currentItem: Int
    let index: Int
    @Binding var scrollID: Int?
    var body: some View {
        HStack {
            ForEach(0..<itemCount, id: \.self) { indicator in
                Button {
                    withAnimation {
                        scrollID = indicator
                    }
                } label: {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 8))
                        .foregroundStyle(indicator == index ? Color.white : Color(.lightGray))
                }
                .tint(.gray)
            }
        }
        .padding(7)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.lightGray).opacity(0.2)))
    }
}
