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


import Foundation
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
