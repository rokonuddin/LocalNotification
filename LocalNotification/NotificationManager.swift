//
//  NotificationManager.swift
//  LocalNotification
//
//  Created by Rokon Uddin on 5/31/18.
//  Copyright © 2018 Rokon Uddin. All rights reserved.
//

import Foundation
import UserNotifications

class NotificationManager {
    static var shared = NotificationManager()
    let center = UNUserNotificationCenter.current()
    
    private init() {
        
    }
    
    func requestAuthorization() {
        center.requestAuthorization(options: [.alert, .sound]) { (success, error) in
            if success {
                print("Permission Granted")
            }
        }
    }
    
    func sendLocalPush(in time: TimeInterval, id: String)  {
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "Wake up Men!", arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: "It's for " + id + " seconds", arguments: nil)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        
        let request = UNNotificationRequest(identifier: "timer" + id, content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if error == nil {
                print("Schedule push succeed")
            }
        }
    }
    
    func removeNotificationWithIdentifiers(_ identifiers: [String]) {
//        UNUserNotificationCenter.current().getPendingNotificationRequests { (notificationRequests) in
//            var identifiers: [String] = []
//            for notification:UNNotificationRequest in notificationRequests {
//                if notification.identifier == identifier {
//                    identifiers.append(notification.identifier)
//                }
//            }
            UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: identifiers)
        }
}
