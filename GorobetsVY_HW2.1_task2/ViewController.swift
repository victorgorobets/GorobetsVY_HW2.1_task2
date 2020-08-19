//
//  ViewController.swift
//  GorobetsVY_HW2.1_task2
//
//  Created by VICTOR on 19.08.2020.
//  Copyright © 2020 VICTOR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightCircle: UIView!
    @IBOutlet weak var yellowLightCircle: UIView!
    @IBOutlet weak var greenLightCircle: UIView!
    @IBOutlet weak var buttonChangeLight: UIButton!
    
    var currentLight = "no"
    let activeLight: CGFloat = 1.0
    let inactiveLight: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightCircle.layer.cornerRadius = yellowLightCircle.frame.size.width / 2
        yellowLightCircle.layer.cornerRadius = yellowLightCircle.frame.size.width / 2
        greenLightCircle.layer.cornerRadius = greenLightCircle.frame.size.width / 2
        
        redLightCircle.alpha = inactiveLight
        yellowLightCircle.alpha = inactiveLight
        greenLightCircle.alpha = inactiveLight
        
        buttonChangeLight.layer.cornerRadius = 10
        buttonChangeLight.setTitle("Start", for: .normal)
        
    }

    @IBAction func pressButtonChangeLight() {
        switch activeLight {
        case redLightCircle.alpha :
            redLightCircle.alpha = inactiveLight
            yellowLightCircle.alpha = activeLight
        case yellowLightCircle.alpha:
            yellowLightCircle.alpha = inactiveLight
            greenLightCircle.alpha = activeLight
        case greenLightCircle.alpha:
            greenLightCircle.alpha = inactiveLight
            buttonChangeLight.setTitle("Start", for: .normal)
        default:
            redLightCircle.alpha = activeLight
            buttonChangeLight.setTitle("Next", for: .normal)
        }
    }
    
}

