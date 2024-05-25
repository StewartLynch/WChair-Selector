//
//  EnterClientData.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-25.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI


struct EnterClientData2: View {
    
    @ObservedObject  var clients = EnterDataProfile1()
    
    var body: some View {
        
       ZStack {
          Circle()
             .frame(width: 200, height: 200)
             .foregroundColor(.accentColor).opacity(0.3)
             .offset(x: 200, y: 400)
             
          ScrollView {
                   VStack (alignment: .center){
                       
                       Text("Seating System")
                       Text("Recommendations")
                   }
                   .font(.system(size: 25, weight: .regular, design: .serif))
                   .padding()
                   
                   Spacer()
                   
                   Section (header: Text("Selector's Recommendations")
                       .font(.system(size: 18, weight: .regular, design: .serif)))  {
                           
                           LazyVStack (alignment: .leading, spacing: 3) {
                               if clients.functionalTransfer == 1 || clients.functionalTransfer == 2 || clients.functionalTransfer == 3 || clients.functionalTransfer == 4 {
                                   WheelchairCard(clients: clients)
                                      
                               } else {
                                   Text(card())
                                       .font(.system(size: 13, weight: .regular, design: .serif))
                                       .padding(.horizontal, 50)
                                       .padding( .vertical, 100)
                                  }
                            
                                 VStack (alignment: .leading, spacing: 3) {
                                    Text(getAnti())
                                    Text(tiltBack())
                                    Text(cushion1())
                                    Text(cushion2())
                                    Text(getSlide())
                                    Text(getSpine())
                                    Text(getLowerBackPain())
                                    Text (getupperExtremityPain())
                                    
                                 }
                                 
                                 
                                 VStack(alignment: .leading, spacing: 3) {
                                    Text(getPelvic())
                                    Text(getAnkle())
                                    Text(getKnee())
                                    Text(getTrunk())
                                    Text(getEdema())
                                    Text(getcoccyx())
                                    Text(getweight())
                                 }
                              
                               VStack(alignment: .leading, spacing: 3) {
                                   Text("Wheelchair Dimensions")
                                   Text("Width: \(clients.width)")
                                   Text("Depth: \(clients.depth)")
                                   Text("Seat to Floor:\(clients.seatToFloor)")
                               }
                               .font(.system(size: 16, weight: .regular, design: .serif))
                               .padding()
                               
                           }
                           .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                           .multilineTextAlignment(.leading)
                           .padding()
                           
                           
                           Spacer()
                       }
                   
               }
          .padding(.bottom)
       }
        
    }
    
    
    func card() -> String {
        var  cad = ""
        if clients.functionalTransfer == 0 && clients.functionalAmbulation == 0 && clients.spine == 0 && clients.pelvic == 0 && clients.knee == 0 && clients.ankle == 0 && clients.pressureUlcer  ==  0 && clients.trunkStatus == false && clients.sliding == false && clients.edemaLE == false && clients.cognitiveStatus == false && clients.lowerBackPain == false && clients.upperExtremityPain == false {
            cad = "Ensure client's data was submitted  in order to determine a wheelchair recommendation"
        }
        return (cad)
    }
    
//    func getStandard() -> String {
//        var std = ""
//        if clients.functionalTransfer == 1 || clients.functionalTransfer == 2 || clients.functionalTransfer == 3 || clients.functionalTransfer == 4 && clients.trunkStatus == false {
//            std = "Consider a Standard Wheelchair"
//        } else if clients.functionalTransfer == 1 || clients.functionalTransfer == 2 || clients.functionalTransfer == 3 || clients.functionalTransfer == 4 && clients.trunkStatus == true {
//            std = "Consider a Specialty Wheelchair"
//        } else if clients.pressureUlcer == 0 {
//           std = "Consider a Specialty Wheelchair"
//        }
//
//        return(std)
//    }
    
    func getAnti() -> String {
        var anti = ""
        if clients.functionalTransfer == 1 && clients.trunkStatus == false && clients.cognitiveStatus == true || clients.functionalTransfer == 4 && clients.trunkStatus == false && clients.cognitiveStatus == true {
            anti = "Consider a STD Wheelchair with  anti rolling back system"
        }
        
        return (anti)
    }
    
    func tiltBack() -> String {
        var tilt = ""
        if clients.functionalTransfer == 2  || clients.functionalTransfer == 3 && clients.trunkStatus == true {
            tilt = "If a person has significant skin integrity issues, it is recommended to consider a TIS (Tilt-In-Space) wheelchair with a contour back seat and lateral support. A TIS wheelchair allows for the entire seat to tilt backward while maintaining a consistent angle between the seat and backrest, redistributing pressure and reducing the risk of pressure sores."
            
        }
        
        return (tilt)
    }
    
    func cushion1() -> String {
        var cush = ""
        if clients.pressureUlcer == 1 || clients.pressureUlcer == 2  {
            cush = "When working with individuals who have or are at risk for pressure ulcers, it is recommended to consider providing a ROHO or Vicair cushion. These types of cushions are specifically designed to redistribute pressure and help prevent the development of pressure ulcers.It's also important to note that a cushion alone may not be sufficient to prevent pressure ulcers, and that regular repositioning, skin inspections, and other preventive measures may also be necessary."
        }
        
        return (cush)
    }
    
    func cushion2() -> String {
        var cush2 = ""
        if clients.pressureUlcer == 3 || clients.pressureUlcer == 4 {
            cush2 = "When working with individuals who have pressure ulcers, it is recommended to consider providing both a ROHO or Vicair cushion and a TIS (Tilt-In-Space) wheelchair. A TIS wheelchair allows for the entire seat to tilt backward while maintaining a consistent angle between the seat and backrest, redistributing pressure and reducing the risk of pressure sores. The contour back seat with lateral support can help to maintain proper posture and prevent the user from sliding out of the seat. The lateral supports provide additional stability to the user's trunk and can help to prevent the development of pressure ulcers on the sides of the body.When selecting a cushion and wheelchair, it's important to consider factors such as the individual's level of mobility, weight, and the location and severity of any existing pressure ulcers."
        }
        
        return (cush2)
    }
    
    func getSpine() -> String {
        var spine = ""
        if clients.spine == 1 { spine = "For Scoleosis:Consider to provide a backseat with scoleosis management"
        }
        else if clients.spine == 2 { spine = "For Kyphosis: Consider to provide an adjustable backseat to accomodate deformity"}
        else if clients.spine == 3 {spine = "For significant lordosis: Consider to provide  a dedicated back seat support to manage curvature"}
        
        return (spine)
    }
    
    
    func getSlide() -> String {
        var slide = ""
        if clients.sliding == true {
            slide = "For sliding issues consider an agressive contour cushion or lower down wheelchair seat (posteriously) or insert a wedge under cushion or an abductor pommel"}
        
        return (slide)
    }
    
    func getPelvic() -> String {
        var pelvic = ""
        if clients.pelvic == 1 { pelvic = "For a pelvic obliquity: Consider a cushion to manage obliquity"}
        else if clients.pelvic == 2 { pelvic = "For a pelvic rotation: Consider a cushion to manage pelvic rotation"}
        else if clients.pelvic == 3 {pelvic = "For a pelvic anterior tilt : Consider a cushion to mange anterior tilt"}
        else if clients.pelvic == 4 {pelvic = "For a pelvic posterior tilt: Consider a cushion to manage  posterior tilt"}
        
        return (pelvic)
    }
    
    func getAnkle() -> String {
        var ankle = ""
        if clients.ankle == 1 || clients.ankle == 2 || clients.ankle == 3 || clients.ankle == 4{
            ankle = "For ankle deformity: anguled foot plate "
        }
        
        return (ankle)
    }
    
    
    func getKnee() -> String {
        var knee = ""
        if clients.knee == 1 { knee = "For knee deformity in flexion: Special foot rest for knee accomodation"}
        else if clients.knee == 2 { knee = "For  knee deformity in extension: elevated leg rest"}
        
        return (knee)
    }
    
    func getTrunk() -> String {
        var trunk = ""
        if clients.trunkStatus == true {
            trunk = "Unable to mainatin upright position: if it is a STD wheelchair consider to add a contour back seat with lateral support, otherwise consider a TIS to manage trunk control deficits"}
        
        return (trunk)
    }
    
    func getEdema() -> String {
        var edema = ""
        if clients.edemaLE == true {
            edema = "For LE edema: elevating leg rest"}
        
        return (edema)
    }
    
    func getcoccyx() -> String {
        var coccyx   = ""
        if clients.riskSkin == true {
            coccyx = "For wound on coccyx consider ROHO or Vicair, if wound stage is III or IV consider a TIS W/C as well"}
        
        return (coccyx)
    }
    
    
    func getweight() -> String {
        var weight   = ""
        if clients.weight >= 250 {
            weight = "Consider to provide a BARIATRIC SIZE for the selected wheelchair"}
        
        return (weight)
    }
    func getLowerBackPain () -> String {
        var lbPain = ""
        if clients.lowerBackPain == true {
            lbPain = "Consider to provide lumbar support to the recommended wheelchair"
        }
        
        return (lbPain)
    }
    func getupperExtremityPain () -> String {
        var upExPain = ""
        if clients.upperExtremityPain == true  && clients.functionalAmbulation ==  3 {
            upExPain = "Consider to provide light-weight wheelchair"
        }
        
        return (upExPain)
    }
    
}



struct EnterClientData2_Previews: PreviewProvider {
    static var previews: some View {
        EnterClientData2()
        
    }
}
