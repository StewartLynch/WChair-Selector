//
//  Seating_AppApp.swift
//  Seating App
//
//  Created by Jaime Fagnilli on 2021-10-09.
//

import SwiftUI

@main
struct WChair_SelectorApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            HomeScreenView()
        }
    }
}
