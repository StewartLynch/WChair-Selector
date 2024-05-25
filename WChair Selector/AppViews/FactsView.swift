//
//  FactsView.swift
//  WChair Selector
//
//  Created by Jaime Fagnilli on 2023-05-11.
//

import SwiftUI

struct FactModel: Hashable {
   let title: String
   let description: String
   
}

struct FactsView: View {
    let facts: [FactModel] = [
       FactModel(title: "Fact 1",description: "Wheelchairs are mobility devices designed to assist people with limited or no mobility in moving around."),
       FactModel(title: "Fact 2",description: "Wheelchairs can be manual or electric. Manual wheelchairs are self-propelled by the user, while electric wheelchairs are powered by batteries."),
       FactModel(title: "Fact 3",description: "There are different types of wheelchairs, including standard wheelchairs, lightweight wheelchairs, sports wheelchairs, and specialized wheelchairs for specific needs"),
       FactModel(title: "Fact 4",description: "Wheelchairs can provide increased independence and accessibility, allowing individuals to navigate their environment and participate in various activities"),
       FactModel(title: "Fact 5",description: "Accessibility regulations and standards often require buildings and public spaces to accommodate wheelchair users with ramps, elevators, and designated accessible parking."),
       FactModel(title: "Fact 6",description: "Wheelchair technology continues to advance, with innovations such as power-assisted wheels, advanced seating systems, and enhanced maneuverability."),
       FactModel(title: "Fact7",description: "Wheelchair sports, including basketball, rugby, and racing, have gained popularity as competitive and recreational activities for wheelchair users."),
       FactModel(title: "Fact 8",description: "Remember, every individual's experience with a wheelchair may vary based on their specific needs and requirements.")
    ]
    
    
    @State private var currentFactIndex = 0
    @State private var isAnimated: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State var showSheet: Bool = false
    
    func getRandomFact() -> FactModel {
       let randomIndex = Int.random(in: 0..<facts.count)
       return facts[randomIndex]
    }
    
    
    var body: some View {
        
        ZStack {
            VStack {
               Text(getRandomFact().title)
                  .font(.title3)
                  .fontWeight(.bold)
               
               
               Text(getRandomFact().description)
                  .multilineTextAlignment(.leading)
                  .foregroundColor(.accentColor)
                  .padding(.horizontal, 10)
               
            }
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
//            .onAppear{
//               withAnimation(Animation.linear(duration: 1.0).speed(0.5)){
//                  isAnimated.toggle()
//               }
//               
//            }
//            
//            .onTapGesture {
//                self.hapticImpact.impactOccurred()
//                self.showSheet = true
//            }
            .sheet(isPresented: self.$showSheet) {

               FactsViewOne()
                    .cornerRadius(40)
                    .presentationDetents([.fraction(0.35)])
                    .presentationDragIndicator(.visible)
                    .onTapGesture {
                        self.showSheet = false
                    }
                 
                  
            }
           

         }
         .frame(width: 370, height: 150)
         .cornerRadius(20)
        
       
    }
}

#Preview  {
        FactsView()

    }

