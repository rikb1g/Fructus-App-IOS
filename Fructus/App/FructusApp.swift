//
//  FructusApp.swift
//  Fructus
//
//  Created by Ricardo Sousa on 22/02/2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }
            
        }
    }
}
