//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by neo on 2023/07/24.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "recalculateBMI", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "recalculateBMI" {
            let destinationVC = segue.destination as! CalculateViewController
        }
    }
}
