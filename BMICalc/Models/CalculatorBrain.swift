//
//  CalculatorBrain.swift
//  BMICalc
//
//  Created by Abhishek Jadaun on 24/08/23.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    // put ? because we don't know what is it's value or color or advice
    var bmiCalculated: BMIAdvice?
    
    func getBMIValue() -> String{
        // double question mark as for if value != nil this is optional binding
        let bmiCalDecimal = String(format: "%.1f", bmiCalculated?.Value ?? 0.0)
        return bmiCalDecimal
    }
    
    func getAdvice() -> String{
        return bmiCalculated?.Advice ?? "No Advice"
    }
    
    func getColor()-> UIColor{
        return bmiCalculated?.Color ?? UIColor.white
    }
    
    mutating func calculateBMI(userWeight: Float, userHeight: Float){
        let bmi = userWeight/(pow(userHeight,2))
        
        if bmi < 18.5 {
            bmiCalculated = BMIAdvice(Value: bmi, Advice: "Eat more pies!", Color: UIColor.blue)
        }
        
        else if bmi < 24.9 {
            bmiCalculated = BMIAdvice(Value: bmi, Advice: "Fit as a fiddle!", Color: UIColor.green)
        }
        
        else {
            bmiCalculated = BMIAdvice(Value: bmi, Advice: "Eat less pies!", Color: UIColor.red)
        }
        
    }
}
