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
        
        content.title = "Time for next Survey"
        content.body = "You have a survey waiting for you"
        content.sound = .default
        content.badge = 1
        
        
        //time
        let trigger =  UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: false)
        //calender
//        var dateComponents = DateComponents()
        // military time
//        dateComponents.hour = 20
//        dateComponents.minute = 30
//        dateComponents.weekday = 6
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        //location
        /*
        let coordinate = CLLocationCoordinate2D(latitude: 40.00,
                                                longitude: 50.00)
        let region = CLCircularRegion(center: coordinate,
                                      radius: 100,
                                      identifier: UUID().uuidString)
        region.notifyOnEntry = true
        let trigger = UNLocationNotificationTrigger(region: region ,repeats: false)
        */
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger )
        
        center.add(request)
        
    }
    
    func cancelNotification() {
        center.removeAllPendingNotificationRequests()
        center.removeAllDeliveredNotifications()
    }
    
     
}


