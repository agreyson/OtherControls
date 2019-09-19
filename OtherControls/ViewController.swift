//
//  ViewController.swift
//  OtherControls
//
//  Created by agreyson on 9/19/19.
//  Copyright © 2019 agreyson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentedController(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            label.text = "First segment"
        } else if sender.selectedSegmentIndex == 1 {
            label.text = "Second segment"
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        label.text = "Slider is at \(sender.value)"
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
//        if sender.isOn {
//            label.text = "Switch is on"
//        } else {
//            label.text = "Switch is off"
//        }
        
        let theText = "Switch is " + (sender.isOn ? "on" : "off")
        label.text = theText
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        label.text = "Stepper value is \(Int(sender.value))"
    }
}

