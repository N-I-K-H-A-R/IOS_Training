//
//  ViewController.swift
//  Login
//
//  Created by user225488 on 8/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        usernameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        
        self.performSegue(withIdentifier: "NavigateToLogin", sender: self)
    }
      
    
}

