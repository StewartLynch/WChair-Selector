//
//  HomeViewScreen.swift
//  WChair Selector
//
//  Created by Jaime Fagnilli on 2024-02-25.
//

import SwiftUI

struct HomeViewScreen: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "filemenu.and.cursorarrow")
                    Text("Home")
                }
                .tag(0)
            
            EnterClientData1()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Assessment")
                }
                .tag(1)
            
            CatalogMainView()
                .tabItem {
                    Image(systemName: "magazine.fill")
                    Text("Wheelchair Types  ")
                    
                }
                .tag(2)
            
            TerminologyView()
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                    Text("Terminology")
                    
                }
                .tag(3)
            
            CaseStadyHomeView()
                .tabItem {
                    Image(systemName: "person.crop.rectangle.stack.fill")
                    Text("Study Cases")
                }
                .tag(4)
            
        }
    }
}

#Preview {
    HomeViewScreen()
}
