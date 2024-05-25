//
//  StudyQuiz.swift
//  Wheelchairs App
//
//  Created by Jaime Fagnilli on 2020-07-25.
//  Copyright © 2020 Jaime Fagnilli. All rights reserved.
//

import SwiftUI
import Observation

@Observable

class quizQuestions{
    
    var student0 = 0
    var student1 = 0
    var student2 = 0
    var student3 = 0
    var student4 = 0
    var student5 = 0
    var student6 = 0
    var student7 = 0
    var student8 = 0
    var student9 = 0
    
}

struct StudyQuiz: View {
    
    @State var choice = quizQuestions()
    
    var alternatives = ["","a","b","c"]
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section {
                    Text("Questions")
                    
                    
                    Text("""
                    1. Select the most accepted wheelchair categorization.
                    a) Standard, Tilt Back in Space, HTR, Power Electric Wheelchair.
                    b) Manual, Electrical, specialty,Bariatric
                    c) Pediatric, Bariatric, Adult Senior, Electric Power
                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student0){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    2. Select type of W/C can be folded.
                                    a) Electric Wheelchair.
                                    b) Manual Scooter
                                    c) Manual Standard wheelchair
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student1){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    3. Select the wheelchair accesory to manage spine deformities.
                                    a) Elevating Leg rest.
                                    b) Back Seat
                                    c) Cushion to manage obliquity
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student2){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    4. Select the most adequate wheelchair to manage pressure ulcer
                                    a) High back  Wheelchair.
                                    b) Powered Wheelchair
                                    c) Wheelchair with Tilt feature
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student3){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                }// section one
                
                Section {
                    
                    Text("""
                                    5. Select the most adequated foot rest to manage ankle dorsiflected
                                    
                                    a) Flip Up foot rest
                                    b) Inverted foot plate
                                    c) Anguled foot plate
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student4){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    6. What are the benefits of a detached armrest?
                                    
                                    a) Ease to storage wheelchair
                                    b) Helpful for transfers
                                    c) Can be interchangeable
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student5){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    
                    Text("""
                                    7. What are the benefits of a height-adjustable armrest?
                                    
                                    a) Make the wheelchair higher
                                    b) Ease to storage unde a table
                                    c) Ease in transfers and better support of a hemi tray
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student6){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    8. Which legrests provide for easier transfers?
                                    
                                    a) Swing-away or detachable system
                                    b) Flip up system
                                    c) Fixed system
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student7){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                }
                
                Section {
                    
                    Text("""
                                    9. What are the weight options available for wheelchairs?
                                    a) Light, Standard, Heavy
                                    b) ultra-light, active-duty lightweight, lightweight, standard, and heavy duty
                                    c) Carbon Light, Aluminio light, Steel weight
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student8){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    10. How do you measure seat width?
                                    
                                    a) Measure the widest point across bilateral thighs
                                    b) Measure regular chair side to side
                                    c) Measure the widest point across the hips and thighs and add 2"
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student9){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                } //section two
                
                NavigationLink(destination: QuizAnswer1View(choice: choice)) {
                    HStack {
                        Image(systemName: "figure.roll").font(.title2)
                        Text("Seating Quiz Answers")
                        
                    }
                    
                    .foregroundColor(.accentColor)
                }
                
                Section(header: Text("To Clear Data") .fontWeight(.heavy)) {
                    Button(action: {
                        clearAll()
                    }, label: {
                        HStack {
                            Image(systemName: "slider.horizontal.below.square.filled.and.square")
                            Text("Press Here").foregroundColor(.primary)}
                    })
                }
            }//form
            .navigationBarTitle("Seating System Quiz", displayMode: .inline)
            .font(.system(size: 14))
        }// Navigation View bracket
    }
    
    func clearAll() {
        
        choice.student0 = 0
        choice.student1 = 0
        choice.student2 = 0
        choice.student3 = 0
        choice.student4 = 0
        choice.student5 = 0
        choice.student6 = 0
        choice.student7 = 0
        choice.student8 = 0
        choice.student9 = 0    }
    
}


#Preview  {
    StudyQuiz()
    
}

