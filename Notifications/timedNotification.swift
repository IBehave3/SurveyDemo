//
//  timedNotification.swift
//  SurveyDemo
//
//  Created by Jonathan Ruiz on 7/20/23.
//

import Foundation
import UserNotifications
import CoreLocation


class NotificationManager {
    
    static let instance = NotificationManager()
    
    let center = UNUserNotificationCenter.current()

    
    func requestAuthorization(){
    
        center.requestAuthorization(options: [.alert,.badge,.sound]) {  succces, error in
            if let error = error{
                print("ERROR\(String(describing: error))")
            } else{
                print("SUCCESS")
            }
        }
        
    }
    
    func schedulesTimedNotification() {
        
        let content = UNMutableNotificationContent()
        
        content.title = "Daily Survey"
        content.body = "You have a daily survey waiting for you."
        content.sound = .default
        content.badge = 1
        
        var dateComponents = DateComponents()
        dateComponents.hour = 19
        dateComponents.minute = 0
        dateComponents.second = 0

        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)

        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { (error) in
            if let error = error {
                print("Error scheduling notification: \(error.localizedDescription)")
            } else {
                print("Notification scheduled successfully")
                }
            }
        
    }
    
    func generateHourlyNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Hourly Survey"
        content.body = "You have an hourly survey waiting for you."
        content.sound = .default
                
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
                
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
        UNUserNotificationCenter.current().add(request) { (error) in
            if let error = error {
                print("Error scheduling notification: \(error.localizedDescription)")
            } else {
                print("Hourly notification shown.")
            }
        }
    }
    
    func cancelNotification() {
        center.removeAllPendingNotificationRequests()
        center.removeAllDeliveredNotifications()
    }
    
     
}


