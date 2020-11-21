//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohammed Alasad on 11/21/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi.value ?? 0.0)
        return bmiTo1DecimalPlace
       
        }
        
    
    mutating func calculateBMI (height:Float,weight:Float){
    bmi = weight / (pow(height, 2))
    }
}
