//
//  BMILogic.swift
//  BMI Calulator
//
//  Created by user225488 on 7/29/22.
//

import Foundation
import UIKit

class BMILogic {
    var bmiValue = "0.0"
    
    func calculateBMI( height: Float,  weight: Float) -> String {
        let bmi = weight / (height * height)
        bmiValue = String(format: "%.1f", bmi)
        return bmiValue
    }
    
         
            
}
