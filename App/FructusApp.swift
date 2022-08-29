//
//  FructusApp.swift
//  Fructus
//
//  Created by Ashish Dutt on 03/08/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
