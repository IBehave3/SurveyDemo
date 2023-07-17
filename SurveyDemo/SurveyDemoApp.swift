//
//  SurveyDemoApp.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 5/11/23.
//

import SwiftUI

@main
struct SurveyDemoApp: App {
    
    @StateObject var globalVariable = globalVariables()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalVariable)
        }
    }
}
