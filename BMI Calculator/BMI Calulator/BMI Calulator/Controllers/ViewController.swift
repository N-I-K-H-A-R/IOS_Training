//
//  ViewController.swift
//  BMI Calulator
//
//  Created by user225488 on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredHeight: UILabel!
    @IBOutlet weak var enteredWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
     
    var bmiValue = "0.0"
    var bmiLogic = BMILogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f" , sender.value)
        enteredHeight.text = "\(height)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        enteredWeight.text = "\(weight)kg"
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        bmiValue = bmiLogic.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "navigateToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "navigateToResult" {
           let destinationVC = segue.destination as! ResultViewController
           destinationVC.bmiValue = bmiValue
       }
   }
}

