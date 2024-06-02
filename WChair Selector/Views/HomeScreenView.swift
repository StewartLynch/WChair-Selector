//
//  ContentView.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2021-10-09.
//

import SwiftUI

struct HomeScreenView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var isSheetPresented = false
    @State private var isSheetPresented1 = false
    @State private var isSheetPresented2 = false
    
    
    var body: some View {
        
        NavigationStack{
            
            HomeScreenTabView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            isSheetPresented = true}
                        ) {
                            Image(systemName: "gear")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            isSheetPresented1 = true
                        }) {
                            Image(systemName: "pencil")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            isSheetPresented2 = true
                        }) {
                            Image(systemName: "dollarsign.arrow.circlepath")
                        }
                    }
                    
                    
                }
                .sheet(isPresented: $isSheetPresented) {
                    ScreenSettingsSheet()
                    
                }
                .sheet(isPresented: $isSheetPresented1) {
                    StudyQuizButtonSheet()
                    
                }
                .sheet(isPresented: $isSheetPresented2) {
                    ModelWheelchairsSheetView()
                    
                }
                .navigationBarTitle("Wheelchairs")
    
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    
    HomeScreenView() 
}

