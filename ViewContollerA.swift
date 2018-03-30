//
//  ViewContollerA.swift
//  DelegateSample
//
//  Created by serfusE on 16/12/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import UIKit

protocol ColorBlockDelegate: AnyObject {
    func changeColor(to color: UIColor)
}

class ViewControllerA: UIViewController, ColorBlockDelegate {

    @IBOutlet weak var colorBlock: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(changeColorThroughNotification(_:)), name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerB = segue.destination as? ViewControllerB {
            viewControllerB.delegate = self
        }
    }
    
    func changeColor(to color: UIColor) {
        colorBlock.backgroundColor = color
    }
    
    func changeColorThroughNotification(_ notification: NSNotification) {
        if let passedColor = notification.userInfo?["color"] as? UIColor {
            changeColor(to: passedColor)
        }
    }
    
}
