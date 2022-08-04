//
//  BillingViewController.swift
//  BillingApp
//
//  Created by user225488 on 7/29/22.
//

import UIKit

class BillingViewController: UIViewController {

    var amount = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.orange
        
        let billLabel = UILabel()
        billLabel.text = amount
        billLabel.frame = CGRect(x: 140, y: 350, width: 200, height: 100)
        billLabel.font = UIFont.systemFont(ofSize: 40)
        view.addSubview(billLabel)
        let label = UILabel()
        label.text = "your Final Amount is"
        label.frame = CGRect(x: 30, y: 250, width: 400, height: 100)
        label.font = UIFont.systemFont(ofSize: 40)
        view.addSubview(label)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
