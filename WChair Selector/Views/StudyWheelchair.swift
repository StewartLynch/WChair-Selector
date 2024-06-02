//
//  WheelchairSeleccion.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-25.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI

class StudentStudy: ObservableObject  {
    @Published var transfer: String = ""
    @Published var ambulation: String = ""
    @Published var cognition: String = ""
    @Published var skinIntegrity: String = ""
    @Published var width: String = ""
    @Published var depth: String = ""
    @Published  var seatToFloor: String = ""
    @Published var spine: String = ""
    @Published var knee: String = ""
    @Published var ankle: String = ""
    @Published var pelvic: String = ""
    @Published var edemaLE: String = ""
    @Published var trunkLeaning: String = ""
    @Published var sliding: String = ""
    @Published  var height: String = ""
    @Published var weight: String = ""
    @Published var studentR1: String = ""
    @Published var studentR2: String = ""
    @Published  var studentR3: String = ""
}

struct StudyWheelchair: View {
    
    @ObservedObject  var student = StudentStudy()
    
    
    var body: some View {
        
        ZStack {
            
            Color.gray
                .ignoresSafeArea()
            
            
            NavigationView {
                
                Form {
                    
                    Section(header: Text("Functional and Physical  Status")) {
                        ZStack {
                            VStack {
                                HStack {
                                    Text("Transfer")
                                    TextField("to wheelchair/indep/_pA/SARA or Ceiling Lift", text: $student.transfer ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Ambulation")
                                    TextField("Arm/leg/arm & leg propelling", text: $student.ambulation ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Cognitive Status")
                                    TextField("Mild/moderate/severe imapirement", text: $student.cognition ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Skin Integrity")
                                    TextField("Braden Scale Score/location/stage", text: $student.skinIntegrity ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Spine Status")
                                    TextField("scoliosis/lordosis/kyphosis", text: $student.spine ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Pelvic Status")
                                    TextField("anterior/posterior Tilt/obliquity/rotation", text: $student.pelvic ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Knee Status")
                                    TextField("Flexed/extended/", text: $student.knee ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Ankle Status")
                                    TextField("Dorsiflexed, Plantarflexed, Inverted, Everted", text: $student.ankle ).foregroundColor(.gray)                            }
                                
                            }
                        }
                    }
                    
                    Section(header: Text("Others Deficits")) {
                        ZStack {
                            VStack {
                                HStack {
                                    Text("Lower Extremities Status")
                                    TextField("Edema/Cellulitis/Amputation", text: $student.edemaLE ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Trunk Balance")
                                    TextField("Poor/fair/WFL/leaning to right/left/forward", text: $student.trunkLeaning ).foregroundColor(.gray)                            }
                                HStack {
                                    Text("Sitting Deficits")
                                    TextField("Passive/Active Sliding", text: $student.sliding).foregroundColor(.gray)                            }
                                
                            }
                        }
                    }
                    
                    Section(header: Text("Wheelchair Dimensions")) {
                        ZStack {
                            VStack {
                                HStack {
                                        Text("Width:")
                                        TextField("Widest point at hips or thighs:", text: $student.width ).foregroundColor(.gray)                        }
                                HStack {
                                        Text("Depth:")
                                        TextField("Posterior of buttocks to back of knee", text: $student.depth ).foregroundColor(.gray)                        }
                                HStack {
                                        Text("Seat To Floor")
                                        TextField("Back of knee to heel:", text: $student.seatToFloor ).foregroundColor(.gray)                        }
                                HStack {
                                        Text("Height")
                                            TextField("Height:", text: $student.height ).foregroundColor(.gray)
                                        Text("Client Weight")
                                            TextField("Weight:", text: $student.weight ).foregroundColor(.gray)                        }
                                
                        }
                    }
                }
                    
                    NavigationLink(destination: StudentOption(student: self.student)) {
                        HStack {
                            Image(systemName: "person.crop.square")
                            Text("Press to Select")
                        }
                    }
               
                    
                }//Form Bracket
          
                .navigationBarTitle("Student Selector", displayMode: .inline)
                .font(.system(size: 16))
              
                
            }
        }//NavigationView
     
    }
}

struct StudyWheelchair_Previews: PreviewProvider {
    static var previews: some View {
        StudyWheelchair()
//            .previewDevice("iPhone 11")
           
        
    }
}
