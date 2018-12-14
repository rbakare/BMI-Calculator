//
//  Calculator.swift
//  BMI Calculator
// StudentID : 300973581

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

class Calculator {
    
    var name : String!
    var age : String!
    var date : String!
    var gender : String!
    
    
    init(name : String, age : String, date : String, gender : String, key : String = "") {
        self.name = name
        self.age = age
        self.date = date
        self.gender = gender
      
    }
    
    
    func toAnyObject() -> [String : AnyObject]
    {
        return["name" : name as AnyObject , "note" : age as AnyObject, "date" : date as AnyObject , "gender" : gender as AnyObject]
    }
}

