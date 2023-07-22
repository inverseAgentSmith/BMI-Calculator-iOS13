//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//    Change heightLabel to UI slider value and format to 2 decimal place limit
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentHeight = Double(sender.value)
        heightLabel.text = String(format: "%.2f", currentHeight) + "m"
    }
//    Change weightLabel value as an integer when weightSlider is moved
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentWeight = Int(sender.value)
        weightLabel.text = String(currentWeight) + "kg"
    }
}
