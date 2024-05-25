//
//  QuizAnswer1View.swift
//  EducationalWheelchairApp
//
//  Created by Jaime Fagnilli on 2021-04-03.
//

import SwiftUI

struct QuizAnswer1View: View {
    
    @State var choice = quizQuestions()
    
    @State var correct: Int = 0
    @State var incorrect: Int = 0
    @State var correctPercentage: Int = 0
    @State var incorrectPercentage: Int = 0
    @State var totalPercentage: Double = 0.0
    @State var count : Int = 0
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Quiz Answers Results")) {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Question 1:")
                            Text(questionCero())
                            
                        }
                        HStack {
                            Text("Question 2:")
                            Text(questionOne())
                        }
                        
                        HStack {
                            Text("Question 3:")
                            Text(questionTwo())
                        }
                        
                        HStack {
                            Text("Question 4:")
                            Text(questionThree())
                        }
                        
                        HStack {
                            Text("Question 5:")
                            Text(questionFour())
                        }
                        
                        HStack {
                            Text("Question 6:")
                            Text(questionFive())
                        }
                        
                        HStack {
                            Text("Question 7:")
                            Text(questionSix())
                        }
                        
                        HStack {
                            Text("Question 8:")
                            Text(questionSeven())
                        }
                        
                        HStack {
                            Text("Question 9:")
                            Text(questionEight())
                        }
                        HStack {
                            Text("Question 10:")
                            Text(questionNine())
                        }
                    }
                    
                }
                
                Section(header: Text("Percentage of correct answers")) {
                    
                    VStack{
                        Section {
                            let totalPercentage = (questionCount() * 10 )
                            Text("\(totalPercentage, specifier: "%.0f") %")
                        }
                        Divider()
                        
                        Section {
                            Text(studentReward())
                            
                            
                        }
                    }
                    
                }
                
            }
            
            
            .navigationBarTitle("Quiz Results", displayMode: .inline)
            
        }
        
    }
    
    
    func studentReward() -> String {
        var student = ""
        if questionCount() == 10 {student = "Good Job!"}
        else {student =  "You can do better, try again!"}
        return  (student)
    }
    
    
    func questionCount() -> Double {
        
        var count = 0.0
        if choice.student0 == 1 { count += 1}
        if choice.student1 == 3 { count += 1}
        if choice.student2 == 2 { count += 1}
        if choice.student3 == 3 { count += 1}
        if choice.student4 == 3 { count += 1}
        if choice.student5 == 2 { count += 1}
        if choice.student6 == 3 { count += 1}
        if choice.student7 == 1 { count += 1}
        if choice.student8 == 2 { count += 1}
        if choice.student9 == 3 { count += 1}
        return (count)
        
    }
    
    
    func questionCero() -> String {
        var  optionCero = ""
        if choice.student0 == 1 {
            optionCero = " Correct"}
        else if choice.student0 == 2 || choice.student0 == 3 {optionCero = "Incorrect"}
        return (optionCero)
    }
    
    func questionOne() -> String {
        var  optionOne = ""
        if choice.student1 == 3 {optionOne = " Correct"}
        else if choice.student1 == 2 || choice.student1 == 1 {optionOne = "Incorrect"}
        return (optionOne)
    }
    
    
    func questionTwo() -> String {
        var  optionTwo = ""
        if choice.student2 == 2 {optionTwo = " Correct"}
        else if choice.student2 == 3 || choice.student2 == 1 {optionTwo = "Incorrect"}
        return (optionTwo)
    }
    
    func questionThree() -> String {
        var  optionThree = ""
        if choice.student3 == 3 {optionThree = " Correct"}
        else if choice.student3 == 2 || choice.student3 == 1 {optionThree = "Incorrect"}
        return (optionThree)
    }
    
    func questionFour() -> String {
        var  optionFour = ""
        if choice.student4 == 3 {optionFour = " Correct"}
        else if choice.student4 == 2 || choice.student4 == 1 {optionFour = "Incorrect"}
        return (optionFour)
    }
    
    func questionFive() -> String {
        var  optionFive = ""
        if choice.student5 == 2 {optionFive = " Correct"}
        else if choice.student5 == 3 || choice.student5 == 1 {optionFive = "Incorrect"}
        return (optionFive)
    }
    
    func questionSix() -> String {
        var  optionSix = ""
        if choice.student6 == 3 {optionSix = " Correct"}
        else if choice.student6 == 2 || choice.student6 == 1 {optionSix = "Incorrect"}
        return (optionSix)
    }
    
    func questionSeven() -> String {
        var  optionSeven = ""
        if choice.student7 == 1 {optionSeven = " Correct"}
        else if choice.student7 == 3 || choice.student7 == 2 {optionSeven = "Incorrect"}
        return (optionSeven)
    }
    
    func questionEight() -> String {
        var  optionEight = ""
        if choice.student8 == 2 {optionEight = " Correct"}
        else if choice.student8 == 3 || choice.student8 == 1 {optionEight = "Incorrect"}
        return (optionEight)
    }
    
    func questionNine() -> String {
        var  optionNine = ""
        if choice.student9 == 3 {optionNine = " Correct"}
        else if choice.student9 == 2 || choice.student9 == 1 {optionNine = "Incorrect"}
        return (optionNine)
    }
}


#Preview {
    QuizAnswer1View()
}

