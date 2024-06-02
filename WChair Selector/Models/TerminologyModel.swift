//
//  TerminologyModel.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2022-01-05.
//

import SwiftUI
import Foundation

struct Terminology: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var definition: String
}
