//
//  StudentRecommendations.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-25.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI


struct StudentOption: View {
    
    @ObservedObject var student = StudentStudy()
   
    
    var body: some View {
        
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            
            NavigationView {
                Form {
                    Section {
                        
                            VStack(alignment: .leading) {
                                HStack {
                                    
                                    Text("W/C Dimensions")
                                    Text("\(student.width) X").foregroundColor(.gray)
                                    Text("\(student.depth) X").foregroundColor(.gray)
                                    Text("\(student.seatToFloor)").foregroundColor(.gray)
                                    
                                }
                                
                                Divider()
                                
                                    HStack {
                                        Text("Trnasfers:")
                                        Text("\(student.transfer)").foregroundColor(.gray)
                                        
                                }
                                
                                Divider()
                                
                                    HStack {
                                        Text("Ambulation:")
                                        Text("\(student.ambulation)").foregroundColor(.gray)
                                        
                                }
                                
                                Divider()
                                
                                    HStack {
                                        Text("Cognitive Status:")
                                        Text("\(student.cognition)").foregroundColor(.gray)
                                        
                                }
                                
                                Divider()
                                
                                    HStack {
                                        Text("Skin Integrity:")
                                        Text("\(student.skinIntegrity)").foregroundColor(.gray)
                                        
                                }
                            }
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    
                                    Text("Spine Status")
                                    Text("\(student.spine) ").foregroundColor(.gray)
                                    
                                }
                                
                                Divider()
                                
                                    HStack {
                                        Text("Pelvic Status:")
                                        Text("\(student.pelvic)").foregroundColor(.gray)
                                        
                                }
                                
                                Divider()
                                
                                    HStack {
                                        Text("Knee Status:")
                                        Text("\(student.knee)").foregroundColor(.gray)
                                        
                                }
                                
                                Divider()
                                
                                    HStack {
                                        Text("Ankle Status:")
                                        Text("\(student.ankle)").foregroundColor(.gray)
                                        
                                }
                                Divider()
                                
                                VStack(alignment: .leading) {
                                
                                    HStack {
                                        Text("LE Status:")
                                        Text("\(student.edemaLE)").foregroundColor(.gray)
                                        
                                    }
                                    Divider()
                                    HStack {
                                
                                        Text("Trunk Balance")
                                        Text("\(student.trunkLeaning) ").foregroundColor(.gray)
                                        
                                    }
                            Divider()
                                    HStack {
                                    Text("Setting Deficits:")
                                    Text("\(student.sliding)").foregroundColor(.gray)
                                        
                                    }
                        Divider()
                                    
                            }
                    
                    
                                Section(header: Text("Student Recommendations")) {
                                    VStack {
                                        TextField("W/C tipe:", text: $student.studentR2)
                                        TextField("W/C Additional accesories:", text: $student.studentR3)
                                        
                                    }.foregroundColor(.gray)
                                    
                                }
                                
                                
                        }
                    }
                    
                    
                    
                        }.navigationBarTitle("Student Recommendations Summary", displayMode: .inline)
                        .font(.system(size: 16))
                  
                    }
                }
            }
        }

struct StudentOption_Previews: PreviewProvider {
    static var previews: some View {
        
  StudentOption()
    
    
//    .previewDevice("iPhone 11")
       
    }
}
