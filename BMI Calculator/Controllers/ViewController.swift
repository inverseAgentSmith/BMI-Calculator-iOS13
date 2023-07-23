//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    Label IBOutlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
//    Slider IBOutlets
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//    Change heightLabel to UI slider value and format to 2 decimal place limit
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(currentHeight)m"
    }
}
