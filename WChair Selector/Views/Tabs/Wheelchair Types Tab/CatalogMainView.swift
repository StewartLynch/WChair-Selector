//
//  CatalogMainView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-02-13.
//

import SwiftUI

struct CatalogMainView: View {
    
    var body: some View {
        
        NavigationView  {
            ZStack {
                
                MotionAnimationView()
                
                ScrollView( .horizontal, showsIndicators: false) {
                    HStack {
                        
                        WheelchairStdView(wheelchair: wheelchairData[0])
                            .containerRelativeFrame(.horizontal)
                            .scrollTransition(axis: .horizontal ){ effect, phase in
                                effect
                                
                                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                            }
                        
                        WheelchairHtrView(wheelchair: wheelchairData[1])
                            .containerRelativeFrame(.horizontal)
                            .scrollTransition(axis: .horizontal ){ effect, phase in
                                effect
                                
                                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                            }
                        
                        WheelchairTisView(wheelchair: wheelchairData[2])
                            .containerRelativeFrame(.horizontal)
                            .scrollTransition(axis: .horizontal ){ effect, phase in
                                effect
                                
                                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                            }
                        
                        WheelchairBrodaView(wheelchair: wheelchairData[3])
                            .containerRelativeFrame(.horizontal)
                            .scrollTransition(axis: .horizontal ){ effect, phase in
                                effect
                                
                                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                            }
                        
                        WheelchairPwcView(wheelchair: wheelchairData[4])
                            .containerRelativeFrame(.horizontal)
                            .scrollTransition(axis: .horizontal ){ effect, phase in
                                effect
                                
                                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                            }
                        
                        WheelchairSeatingMattersView(wheelchair: wheelchairData[5])
                            .containerRelativeFrame(.horizontal)
                            .scrollTransition(axis: .horizontal ){ effect, phase in
                                effect
                                    .scaleEffect(phase.isIdentity ? 1 : 0.5)
                                
                            }
                    }
                    
                }//ScrollView
                .scrollTargetBehavior(.paging)
                .contentMargins(20, for: .scrollContent)
                
            }//ZStack
            .navigationBarTitle("Wheechair Types", displayMode: .inline)
            
        }//NavigationView
    }
}


#Preview  {
    CatalogMainView()
}

