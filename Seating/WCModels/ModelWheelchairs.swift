//
//  ModelWchairs.swift
//  WChair Selector
//
//  Created by Jaime Fagnilli on 2024-03-07.
//

import SwiftUI

struct ModelWheelchairsDetail: View {
    var modelPrices: ModelPrice
   
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){

            VStack {
                Section(header: Text("Wheelchair Model").font(.headline).bold().foregroundColor(Color.primary)) {
                    Text("\(modelPrices.ModelName)").font(.title).bold().foregroundColor(Color.accentColor).bold()
                    HStack {
                        Text("$ \(modelPrices.price, specifier: "%.2f") CAD").foregroundColor(Color.secondary)
                        Image(systemName: "tag.fill").foregroundColor(.red)

                    }
                    Image(modelPrices.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300, alignment: .center)
                        .padding(.top)
                    
                    Text("\(modelPrices.description)")
                        .foregroundColor(Color.secondary)
                        .frame(width: 350, height: .infinity, alignment: .center)
                        
                        
                    
                }

                
            }
           .padding()
        }
        .navigationBarTitle("Wheelchairs Models")
        
    }
}

struct ModelWheelchairs: View {
    
    @State var modelPrices: [ModelPrice] = modelPriceData
    
    @State private var selectedModelPrice: ModelPrice?
    @State private var isDetailViewPresented: Bool = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 10){
                    ForEach(modelPrices) { item in
                        Button(action: {
                            selectedModelPrice = item
                            isDetailViewPresented.toggle()
                        }, label: {
                            VStack(alignment: .center, spacing: 5) {
                                Image(item.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 90, height: 90, alignment: .center)
                                    .padding(.top)
                                    .shadow(color: isDetailViewPresented ? .gray.opacity(0.5) : .black.opacity(0.5), radius: isDetailViewPresented ? 2 : 5, x: 5, y: isDetailViewPresented ? 2 : 5)
                                    .scaleEffect(isDetailViewPresented ? 0.99 : 1.0)
                                    .animation(.easeInOut(duration: 0.5), value: isDetailViewPresented)
                                
                                Text(" \(item.ModelName)")
                                    .font(.headline)
                                    .font(.system(.title, design: .serif))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.accentColor)

                                
                                HStack {
                                    Text("$ \(item.price, specifier: "%.2f") CAD")
                                        .foregroundColor(Color.secondary)
                                        
                                    Image(systemName: "tag").foregroundColor(.red)

                                }
                                .font(.caption)
                                .padding()
                                
                                
                            }
                            .frame(width: 180, height: 180, alignment: .topLeading)
                            .foregroundColor(Color.accentColor)
                            .background(Color.accentColor.cornerRadius(10).opacity(0.2))
                            .cornerRadius(25)
                        })
                        .sheet(isPresented: Binding(
                            get: { isDetailViewPresented },
                            set: { _ in isDetailViewPresented = false }
                            
                        )) {
                            if let selectedModelPrice = selectedModelPrice {
                                ModelWheelchairsDetail(modelPrices: selectedModelPrice)
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium, .large])
                            }
                        }
                    }
                }
            }
            
//            .padding(.vertical, 50)
            .padding(.horizontal, 10)
            .navigationBarTitle("Wheelchair Models", displayMode: .inline)
            
        }
       
    }
}

#Preview {
    ModelWheelchairs()
}
