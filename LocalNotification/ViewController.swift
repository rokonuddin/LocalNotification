//
//  ViewController.swift
//  LocalNotification
//
//  Created by Rokon Uddin on 5/17/18.
//  Copyright © 2018 Rokon Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationManager.shared.requestAuthorization()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func notificationButtonPressed(_ sender: UIButton) {
        guard let text = secondTextField.text else { return }
        guard let time = TimeInterval(text) else { return }
        NotificationManager.shared.sendLocalPush(in: time, id: text)
        secondTextField.text = nil
    }
    
}

