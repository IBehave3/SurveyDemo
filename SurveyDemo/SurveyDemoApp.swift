//
//  SurveyDemoApp.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 5/11/23.
//

import SwiftUI
import UserNotifications

@main
struct SurveyDemoApp: App {
    
    @StateObject var globalVariable = globalVariables()
    @StateObject var locationManager = LocationManager()
    
    init(){
        NotificationManager().requestAuthorization()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalVariable)
                .environmentObject(locationManager)
        }
    }
}
