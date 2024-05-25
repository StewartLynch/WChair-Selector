//
//  TerminologyView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-05.
//

import SwiftUI

struct TerminologyView: View {
    
    @State var terminologies: [Terminology] = terminologyData
    
    @State private var searchText  =  ""
    @State var titles = terminologyData
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(terminologies) { item in
                    NavigationLink(
                        destination: TerminoloyDetailView(terminology: item) ) {
                            TerminologyRowView(terminology: item)
                        }
                }
            }
            .navigationBarTitle("Terminology" , displayMode: .inline)
            
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .automatic) ) {
        }
        .onChange(of: searchText, initial: true) { searchText, bool in
            
            if !searchText.isEmpty {
                terminologies = titles.filter {$0.title.contains(searchText) }
            } else {
                terminologies = titles
            }
        }
        .font(.subheadline)
        
    }
}

#Preview {
    
    TerminologyView(terminologies: terminologyData)
}

