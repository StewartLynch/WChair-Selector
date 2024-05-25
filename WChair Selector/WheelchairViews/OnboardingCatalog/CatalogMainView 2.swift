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
                
                ScrollView(showsIndicators: false) {
                    
                    
                    WheelchairStdView(wheelchair: wheelchairData[0])
                    
                    WheelchairHtrView(wheelchair: wheelchairData[1])
                    
                    WheelchairTisView(wheelchair: wheelchairData[2])
                    
                    WheelchairBrodaView(wheelchair: wheelchairData[3])
                    
                    WheelchairPwcView(wheelchair: wheelchairData[4])
                    
                    WheelchairSeatingMattersView(wheelchair: wheelchairData[5])
                    
                }
                .padding(.top, 20)
                .padding(.bottom, 10)
            }
            .navigationBarTitle("WheelChair Category", displayMode: .inline)

        }
 
    }
    
}


struct CatalogMainView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogMainView()
    }
}
