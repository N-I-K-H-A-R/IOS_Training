//
//  LoginViewController.swift
//  Login
//
//  Created by user225488 on 8/1/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.text = "You've successfully loged in"
        label.frame = CGRect(x: 100, y: 100, width: 400, height: 100)
        view.addSubview(label)
    }
    
    

}
