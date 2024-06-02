//
// ----------------------------------------------
// Original project: WChair Selector
// by  Stewart Lynch on 2024-06-02
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
// ----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct ModelWheelchairsDetailView: View {
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

#Preview {
    ModelWheelchairsDetailView(modelPrices: modelPriceData[0])
}
