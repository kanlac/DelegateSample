//
//  ViewControllerC.swift
//  DelegateSample
//
//  Created by serfusE on 16/12/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import UIKit

let mySpecialNotificationKey = "com.dean.specialNotificationKey"
let blueDict = ["color": UIColor.blue]
let redDict = ["color": UIColor.red]
let orangeDict = ["color": UIColor.orange]

class ViewControllerC: UIViewController {

    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func bluePressed(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil, userInfo: blueDict)
    }
    @IBAction func redPressed(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil, userInfo: redDict)
    }
    @IBAction func orangePressed(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil, userInfo: orangeDict)
    }
    
}
