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
//    Change weightLabel value as an integer when weightSlider is moved
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentWeight = Int(sender.value)
        weightLabel.text = "\(currentWeight)kg"
        print("GITTEST")
    }
//    Calculate BMI using slider values once "calculate" button is pressed
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
}
