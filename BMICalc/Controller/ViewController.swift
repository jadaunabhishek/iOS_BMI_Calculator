//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Abhishek Jadaun on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    var brainBMI = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightBar(_ sender: UISlider) {
        let height = String(format: "%0.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightBar(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        brainBMI.calculateBMI(userWeight: weight, userHeight: height)
        
        self.performSegue(withIdentifier: "resultBMI", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultBMI"{
            
            // set destination in variabledestinationController
            let destinationController = segue.destination as! SecondViewController
            destinationController.bmiValue = brainBMI.getBMIValue()
            destinationController.advice = brainBMI.getAdvice()
            destinationController.color = brainBMI.getColor()
        }
    }
    
}

