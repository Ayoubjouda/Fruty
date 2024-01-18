//
//  FructusApp.swift
//  Fructus
//
//  Created by Ayoub Jouda on 12/25/22.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnBoarding){
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
