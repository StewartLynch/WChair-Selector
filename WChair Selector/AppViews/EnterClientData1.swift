//
//  EnterClientData1.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-26.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

class EnterDataProfile1: ObservableObject {
    
    @Published var functionalTransfer: Int = 0
    @Published var functionalAmbulation: Int = 0
    @Published var cognitiveStatus: Bool = false
    @Published var pressureUlcer: Int = 0
    @Published var width: Int =  0
    @Published var depth: Int = 0
    @Published var seatToFloor: Int = 0
    
    @Published var spine: Int = 0
    @Published var knee: Int = 0
    @Published var ankle: Int = 0
    @Published var ankleA: Int = 0
    @Published var pelvic: Int = 0
    @Published var edemaLE: Bool = false
    @Published var sliding: Bool = false
    @Published var trunkStatus: Bool = false
    @Published var lowerBackPain: Bool = false
    @Published var upperExtremityPain: Bool = false
    
    
    @Published var riskSkin: Bool = false
    
    @Published var weight: Double = 0
    
    func getPic() -> String {
        var pic = ""
        if  trunkStatus == false && pressureUlcer == 0 || pressureUlcer == 1 || pressureUlcer == 2  {
            pic = "STD"
        } else if trunkStatus == true  && pressureUlcer == 0 || pressureUlcer == 1 || pressureUlcer == 2 {
            pic = "STD"
        } else if trunkStatus == false  &&  pressureUlcer == 3 || pressureUlcer == 4  {
            pic = "TIS"
        } else if trunkStatus == true  && pressureUlcer == 2 || pressureUlcer == 3 || pressureUlcer == 4 {
            pic = "TIS"
        } else if  functionalTransfer == 0 && functionalAmbulation == 0 && pressureUlcer == 0 && spine == 0 && riskSkin == false {
           pic = "Ensure client's data was submitted"
        } else {
            pic = "Ensure client's data was submitted"
        }
        return (pic)
    }
    func getStandard() -> String {
        var std = ""
        if trunkStatus == false && pressureUlcer == 0 || pressureUlcer == 1 || pressureUlcer == 2 {
            std = "STD wheelchair is selected to be use with people with adequate head and trunk control. "
        } else if trunkStatus == true  && pressureUlcer == 0 || pressureUlcer == 1 || pressureUlcer == 2 {
            std = "STD wheelchair is selected to be use with people with adequate head and trunk control. ."
        } else if trunkStatus == false  && pressureUlcer == 3 || pressureUlcer == 4  {
            std = "TIS wheelchair is selected to be use with people that need pressure relief and trunk support. "
        } else if trunkStatus == true  && pressureUlcer == 2 || pressureUlcer == 3 || pressureUlcer == 4 {
            std = "TIS wheelchair is selected to be use with people that need pressure relief and trunk support."
        } else if  functionalTransfer == 0 && functionalAmbulation == 0 && pressureUlcer == 0 && spine == 0 && riskSkin == false {
            std = "Ensure client's data was submitted"
        }else {
            std = "Ensure client's data was submitted"
        }
        return(std)
    }
    
    func getDescription() -> String {
        var descrip = ""
        if trunkStatus == false && pressureUlcer == 0 || pressureUlcer == 1 || pressureUlcer == 2 {
            descrip = "Standard wheelchairs are the most basic of the categories that self propulsion is an option. Standard wheelchairs are intended for short term use and although seating systems can be added to the wheelchair this category isn't often chosen for those who will be using a wheelchair on a regular basis. The advantages of the standard wheelchair is it is sturdy and inexpensive."
        } else if trunkStatus == true  && pressureUlcer == 0 || pressureUlcer == 1 || pressureUlcer == 2 {
            descrip = "Standard wheelchairs are the most basic of the categories that self propulsion is an option. Standard wheelchairs are intended for short term use and although seating systems can be added to the wheelchair this category isn't often chosen for those who will be using a wheelchair on a regular basis. The advantages of the standard wheelchair is it is sturdy and inexpensive."
        } else if trunkStatus == false  && pressureUlcer == 3 || pressureUlcer == 4  {
            descrip = "These types of wheelchairs are also known as Manual Dynamic Tilt wheelchairs and are most suitable for individuals who require the tilting feature on the seat frame because they are unable to shift their body weight. Type 5 wheelchair models do not fold and feature swing-away footrests, quick release axles for easy servicing and transport, anti-tippers and adjustable-height arms that can be removed. These wheelchair types are highly customizable for individuals with very limited mobility."
        } else if trunkStatus == true  && pressureUlcer == 2 || pressureUlcer == 3 || pressureUlcer == 4 {
            descrip = "These types of wheelchairs are also known as Manual Dynamic Tilt wheelchairs and are most suitable for individuals who require the tilting feature on the seat frame because they are unable to shift their body weight. Type 5 wheelchair models do not fold and feature swing-away footrests, quick release axles for easy servicing and transport, anti-tippers and adjustable-height arms that can be removed. These wheelchair types are highly customizable for individuals with very limited mobility."
        }else {
            descrip = ""
        }
        return (descrip)
    }
}

struct EnterClientData1: View {
    
    @State var showSheet: Bool = false
    
    @ObservedObject  var clients = EnterDataProfile1()
    
    
    var dimensionWidth = ["14","16","18","20","22","24","26","28"]
    var dimensionDepth = ["14","16","18","20","22","24","26","28"]
    
    
    var woundStageA = ["", "Stage I", "Stage II", "Stage III", "Stage IV"]
    
    var functionalTransfersA = ["Status"," 1-2 pA", "SARA lift", "Ceiling lift","Independent"]
    var functionalAmbulationsA = ["Status","Leg propelling", "Arm and Leg propelling", "Arm propelling"]
    var spineDeformitiesA = ["None ", "Scoliosis", "Kyphosis", "Lordosis" ]
    var pelvicDeformitiesA = ["None ","Obliquity", "Rotation", "Anterior-Tilt", "Posterior-Tilt"]
    var kneeDeformitiesA = ["None ", "Flexed", "Extended"]
    var ankleDeformitiesA = ["None ", "Dorsiflexion", "PlantarFlexion", "Inverted", "Everted"]
    
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                
                Form {
                    
                    Section (header: Text("Functional Status").fontDesign(.serif).fontWeight(.heavy)) {
                        VStack(alignment: .leading) {
                            
                            VStack {
                                HStack {
                                    Picker("Funtional Transfer", selection: $clients.functionalTransfer){
                                        ForEach(0..<functionalTransfersA.count, id: \.self) {
                                            Text(self.functionalTransfersA[$0]).tag($0)
                                        }
                                    }.pickerStyle(DefaultPickerStyle())
                                    
                                }
                            }
                            
                            
                            
                            VStack {
                                HStack {
                                    Picker("Wheelchair Ambulation",selection: $clients.functionalAmbulation){
                                        ForEach(0..<functionalAmbulationsA.count, id: \.self){
                                            Text(self.functionalAmbulationsA[$0]).tag($0)
                                        }
                                    }.pickerStyle(DefaultPickerStyle())
                                }
                            }
                            
                        }
                    }
                    
                    Section (header: Text("Deformities Status").fontDesign(.serif).fontWeight(.heavy)) {
                        VStack(alignment: .leading) {
                            
                            Section
                            {
                                VStack {
                                    HStack {
                                        Picker("Spine Deformities", selection: $clients.spine){
                                            ForEach(0..<spineDeformitiesA.count, id: \.self) {
                                                Text(self.spineDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(DefaultPickerStyle())
                                    }
                                }
                            }
                            
                            Section{
                                VStack {
                                    HStack {
                                        Picker("Pelvic Deformities", selection: $clients.pelvic){
                                            ForEach(0..<pelvicDeformitiesA.count, id: \.self) {
                                                Text(self.pelvicDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(DefaultPickerStyle())
                                    }
                                }
                            }
                            
                            Section {
                                VStack {
                                    HStack {
                                        Picker("Knee Deformities", selection: $clients.knee){
                                            ForEach(0..<kneeDeformitiesA.count, id: \.self) {
                                                Text(self.kneeDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(DefaultPickerStyle())
                                    }
                                }
                            }
                            Section {
                                VStack {
                                    HStack {
                                        Picker("Ankle Deformities", selection: $clients.ankle){
                                            ForEach(0..<ankleDeformitiesA.count, id: \.self) {
                                                Text(self.ankleDeformitiesA[$0]).tag($0)
                                            }
                                        }.pickerStyle(DefaultPickerStyle())
                                    }
                                    
                                }
                            }
                        }
                    }
                    
                    
                    Section (header: Text("Skin Integrity Status").fontDesign(.serif).fontWeight(.heavy)) {
                        VStack(alignment: .leading) {
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Wound on coccyx", isOn: $clients.riskSkin)}
                                        if clients.riskSkin {Text("Yes")}  else {Text("No")}
                                    }
                                }
                                
                            }
                            Section {
                                VStack {
                                    HStack {
                                        Picker("Wound Stage", selection: $clients.pressureUlcer){
                                            ForEach(0..<woundStageA.count, id: \.self){
                                                Text(self.woundStageA [$0]).tag($0)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Section (header: Text("Additional issues").fontDesign(.serif).fontWeight(.heavy)) {
                        VStack (alignment: .leading, spacing: 10) {
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Trunk control Impaired", isOn: $clients.trunkStatus)}
                                        if clients.trunkStatus {Text("Yes")}  else {Text("No")}
                                    }
                                }
                                
                            }
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Sliding", isOn: $clients.sliding)}
                                        if clients.sliding {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Edema LE", isOn: $clients.edemaLE)}
                                        if clients.edemaLE {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Cognition severely  Impaired", isOn: $clients.cognitiveStatus)}
                                        if clients.cognitiveStatus {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Lower Back pain", isOn: $clients.lowerBackPain)}
                                        if clients.lowerBackPain {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            Section {
                                VStack {
                                    HStack {
                                        HStack {
                                            Toggle("Upper Extremities pain", isOn: $clients.upperExtremityPain)}
                                        if clients.upperExtremityPain {Text("Yes")}  else {Text("No")}
                                    }
                                }
                            }
                            
                        }
                    }
                    
                    
                    Section (header: Text("Client's measurements").fontDesign(.serif).fontWeight(.heavy))  {
                        
                        
                        VStack {
                            HStack (spacing: 50){
                                
                                Text("Body Weight: \(clients.weight, specifier: "%.0f")")

                                Slider(value: $clients.weight, in: 20...500)
                            }
                        }
                       
                        VStack {
                            HStack {
                                Picker("Width:", selection: $clients.width){
                                    ForEach(0 ..< 37){
                                        Text("\($0)")
                                    }
                                }
                            }
                        }
                        VStack {
                            HStack {
                                Picker("Depth:", selection: $clients.depth){
                                    ForEach(0 ..< 21){
                                        Text("\($0)")
                                    }
                                }
                            }
                        }
                        
                        VStack {
                            HStack {
                                Picker("Seat to Floor Height:", selection: $clients.seatToFloor){
                                    ForEach(0 ..< 21){
                                        Text("\($0)")
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    
                    Section(header: Text("Seating System Recommended")
                        .fontDesign(.serif)
                        .fontWeight(.heavy)){
                            
                            
                            Button (action: {
                                showSheet.toggle()
                            }, label: {
                                HStack (alignment: .center, spacing: 50) {
                                    Image("p2")
                                        .resizable()
                                        .aspectRatio( contentMode: .fit)
                                        .frame(width: 50)
                                        .padding()
                                    
                                    Text("Recommendations")
                                }
                            })
                            
                            
                            .sheet(isPresented: self.$showSheet) {
                                EnterClientData2(clients: clients)
                                
//                                WheelchairClient(clients: clients)
                            }
                            
                            
                        }
                    Section(header: Text("To Clear Data").fontDesign(.serif) .fontWeight(.heavy)) {
                        Button(action: {
                            clearAll()
                        }, label: {
                            HStack(alignment: .center, spacing: 50) {
                                Image(systemName: "arrow.counterclockwise.circle.fill")
                                    .foregroundColor(.primary)
                                    .font(.title)
                                    .frame(width: 50)
                                    .padding()
                                Text("Press Here")
                                    .foregroundColor(.blue)
                                
                            }
                        })
                        
                    }
                    
                }
                .navigationBarTitle("Enter Client Data", displayMode: .inline)
//                .scrollIndicators(.hidden)
                
            }.padding(.bottom)
        }
    }
    
    func clearAll() {
        
        clients.functionalTransfer = 0
        clients.functionalAmbulation = 0
        clients.cognitiveStatus = false
        clients.pressureUlcer = 0
        clients.width =  0
        clients.depth = 0
        clients.seatToFloor = 0
        
        clients.spine  = 0
        clients.knee  = 0
        clients.ankle  = 0
        clients.ankleA  = 0
        clients.pelvic  = 0
        clients.edemaLE  = false
        clients.riskSkin  = false
        clients.sliding  = false
        clients.trunkStatus  = false
        clients.lowerBackPain = false
        clients.upperExtremityPain = false
        
        clients.weight = 0
        
    }
}


#Preview {
    
    EnterClientData1()
}


//struct EnterClientData1_Previews: PreviewProvider {
//    static var previews: some View {
//        EnterClientData1()
//           
//
//    }
//}
