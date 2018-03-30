//
//  ViewControllerB.swift
//  DelegateSample
//
//  Created by serfusE on 16/12/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    weak var delegate: ColorBlockDelegate?
    
    @IBAction func bluePressed(_ sender: Any) {
        delegate?.changeColor(to: UIColor.blue)
    }
    @IBAction func redPressed(_ sender: Any) {
        delegate?.changeColor(to: UIColor.red)
    }
    @IBAction func orangePressed(_ sender: Any) {
        delegate?.changeColor(to: UIColor.orange)
    }
    
}
