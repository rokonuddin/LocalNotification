//
//  CalendarViewController.swift
//  LocalNotification
//
//  Created by Rokon Uddin on 6/2/18.
//  Copyright © 2018 Rokon Uddin. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Date Notification"
        self.datePicker.minimumDate = Date()
        NotificationManager.shared.requestAuthorization()
    }

    @IBAction func notificationButtonPressed(_ sender: UIButton) {
        NotificationManager.shared.sendLocalPush(on: datePicker.date, id: datePicker.date.dateTimeString)
    }
    
}
