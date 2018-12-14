//
//  BmiViewController.swift
//  BMI Calculator
// StudentId: 300973581
//  Created by Raheem Bakare on 2018-12-13.
//  Copyright © 2018 centennial college. All rights reserved.
//

import UIKit

class BmiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var resultTextField: UILabel!
    
    @IBAction func calculateBtn(_ sender: Any) {
        guard let weightInKG = weightTextField.text,
            let heightInCM = heightTextField.text else {
                return
        }
        let cm = CalculatorBrain(weightInKG: weightInKG, heightInCM: heightInCM)
        let result = cm.calcBmi()
        resultTextField.text = "BMI: \(result)"
    }
    



}
