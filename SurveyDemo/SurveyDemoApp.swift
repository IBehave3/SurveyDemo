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
    @StateObject var signupVariable = SignupVariables()
    @StateObject var dailyAnswers = DailySurveyAnswers()
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalVariable)
                .environmentObject(locationManager)
                .environmentObject(signupVariable)
                .environmentObject(dailyAnswers)
                .navigationViewStyle(.stack)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        NotificationManager().requestAuthorization()
        NotificationManager().schedulesTimedNotification()
        
        return true
    }
//    
//    func applicationWillTerminate(_ application: UIApplication) {
//        UserDefaults.standard.set(false, forKey: "taskStatus")
//    }
}
