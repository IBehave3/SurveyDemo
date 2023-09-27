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
    @StateObject var locationStatus = LocationStatus()
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
        
    @State private var timer: Timer?

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(globalVariable)
                .environmentObject(locationManager)
                .environmentObject(signupVariable)
                .environmentObject(dailyAnswers)
                .environmentObject(locationStatus)
                .navigationViewStyle(.stack)
                .onAppear {
                    UIApplication.shared.isIdleTimerDisabled = true

                    startPeriodicBackgroundTask()
                }
        }
    }
    
        private func performBackgroundTask() {
    
                 timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
                     
                     if let token = UserDefaults.standard.string(forKey: "token"), !token.isEmpty {
                         if let location = locationManager.location {
                             
                             print("Latitude: \(location.coordinate.latitude)")
                             print("Longitude: \(location.coordinate.longitude)")
         
                             let data: [String: Any] = [
                                 "latitude": location.coordinate.latitude,
                                 "longitude": location.coordinate.longitude,
                                 "timestamp": Int(NSDate().timeIntervalSince1970)
                             ]
                             
                             submitLocationData(data: data) {
                                 result in switch result {
                                    case .success(let data):
                                        print("Location sent successfully.")
                                         do {
                                             if let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                                                 
                                                 if let startHourlySurvey = jsonObject["initHourlySurvey"] as? Bool {
                                                     if (startHourlySurvey) {
                                                         NotificationManager().generateHourlyNotification()
                                                     }
                                                 }
                                             } else {
                                                 print("Failed to convert Data to JSON dictionary")
                                             }
                                         } catch {
                                             print("Error: \(error)")
                                         }
                                     
                                        DispatchQueue.main.async {
                                                 locationStatus.isLocationLive = true
                                        }
                                    case .failure(let error as NSError):
                                     DispatchQueue.main.async {
                                                 locationStatus.isLocationLive = false
                                             }
                                        print("Location sent unsuccessful.")
                                 }
                             }
                         } else {
                             DispatchQueue.main.async {
                                         locationStatus.isLocationLive = false
                                     }
                         }
                         
                     } else {
                         DispatchQueue.main.async {
                                     locationStatus.isLocationLive = false
                                 }
                         print("Token is nil or empty")
                     }
            }
    
            RunLoop.current.run()
        }
        
        private func startPeriodicBackgroundTask() {
            DispatchQueue.global().async {
                self.performBackgroundTask()
            }
        }
}

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        NotificationManager().requestAuthorization()
        NotificationManager().schedulesTimedNotification()
        UNUserNotificationCenter.current().delegate = self
                
        return true
    }
    
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void)
    {        
        // Show a banner
        completionHandler([.alert,.sound])

    }
    
}
