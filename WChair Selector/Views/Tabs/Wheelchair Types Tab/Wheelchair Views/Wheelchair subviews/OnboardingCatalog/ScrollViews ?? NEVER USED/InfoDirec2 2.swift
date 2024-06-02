//
//  InfoDirec2.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2023-02-13.
//

import SwiftUI

struct InfoDirec2: View {
    var body: some View {
       ZStack {
           VStack {
               HStack {
                   Image(systemName: "arrow.right")
               }
               .foregroundColor(.blue)
               
           }
       }
    }
}

struct InfoDirec2_Previews: PreviewProvider {
    static var previews: some View {
        InfoDirec2()
    }
}
