//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohammed Alasad on 11/21/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
       
        }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
        
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    mutating func calculateBMI (height:Float,weight:Float){
        let bmiValue = weight / (pow(height, 2))
        bmi = BMI(value: bmiValue, advice: "Soup", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        if bmiValue < 18.5 {
            print("Underweight!!!")
        }
        else if bmiValue < 24.9  {
            print("You are average")
            bmi = BMI(value: bmiValue, advice: "ur kewl", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }
        else {
            print("You fat frick")
            bmi = BMI(value: bmiValue, advice: "Lose some fat joe", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
    }
}
