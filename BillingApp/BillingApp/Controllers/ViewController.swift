//
//  ViewController.swift
//  BillingApp
//
//  Created by user225488 on 7/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountLabel: UILabel!
    
    
    var tip = 0.0
    var billAmount = 0.0
    var billingLogic = BillingLogic()
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTip(_ sender: UIButton) {
        billAmountTextField.endEditing(true)
        billingLogic.billAmount = Double(billAmountTextField.text!)!
        tip = Double(sender.titleLabel!.text!)!
        billAmount += billingLogic.updateBillAmount(tip: tip)
        print(billAmount)
    }
    
    
    @IBAction func splitBill(_ sender: UIButton) {
        let split = sender.titleLabel!.text!.first
        billAmount = billingLogic.splitBillAmount(splitBy: split!)
        print(billAmount)
    }
    
    
    @IBAction func billPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Navigation", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Navigation" {
            let destinationVC = segue.destination as! BillingViewController
            destinationVC.amount = String(format: "%.2f", billAmount)
        }
    }
}

