//
//  WheelchairHeaderView.swift
//  wheelchair (iOS)
//
//  Created by Jaime Fagnilli on 2020-12-05.
//

import SwiftUI

struct WheelchairHeaderView: View {
    
    @State private var isAnimatingImage: Bool = false
    
    var wheelchair: Wheelchair
    
    var body: some View {
        ZStack {

            Image(wheelchair.image)
                .resizable()
                .scaledToFit()
                .shadow(color:Color.black, radius: 5, x: 6, y: 6)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }

        .onAppear() {
            withAnimation(.spring(response: 1.5, dampingFraction: 0.3, blendDuration: 1.5)) {
                isAnimatingImage = true
            }
        }
    }
}

#Preview  {
        WheelchairHeaderView(wheelchair: wheelchairData[0])
        

    }

