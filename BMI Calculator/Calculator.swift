//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Raheem Bakare on 2018-12-13.
//  Copyright © 2018 centennial college. All rights reserved.
//

import Foundation
import Foundation

struct CalculatorBrain {
    let weightInKG: Double
    let heightInCM: Double
    
    init(weightInKG: String, heightInCM: String) {
        self.weightInKG = Double(weightInKG) ?? 0.0
        self.heightInCM = Double(heightInCM) ?? 0.0
    }
    
    func calcBmi() -> Double {
        return weightInKG / ((heightInCM / 100) * (heightInCM / 100))
    }
}
