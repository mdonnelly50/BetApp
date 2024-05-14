//
//  MikeAppFinalApp.swift
//  MikeAppFinal
//
//  Created by xcode15 on 5/10/24.
//

import SwiftUI
import Firebase
@main
struct MyApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
