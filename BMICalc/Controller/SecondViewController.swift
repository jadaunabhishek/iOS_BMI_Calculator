//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Abhishek Jadaun on 22/08/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var bmiResultAdvice: UILabel!
    @IBOutlet weak var bmiResultValue: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        bmiResultValue.text = bmiValue
        bmiResultAdvice.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
