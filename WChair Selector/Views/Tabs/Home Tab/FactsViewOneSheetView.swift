//
//  FactsViewOne.swift
//  WChair Selector
//
//  Created by Jaime Fagnilli on 2023-05-11.
//

import SwiftUI

struct FactsViewOneSheetView: View {
    var body: some View {
       

           FactsView()
                .presentationDetents([.fraction(0.35)])
                .presentationDragIndicator(.visible)
        
    }
}

#Preview {
        FactsViewOneSheetView()

    }

