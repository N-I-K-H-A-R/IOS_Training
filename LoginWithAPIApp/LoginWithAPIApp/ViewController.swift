//
//  ViewController.swift
//  LoginWithAPIApp
//
// 
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onButtonPressed(_ sender: UIButton) {
        let email = "xyz@gmail.com"
        let password = "123456"
        let firstName = "mark"
        let lastName = "smith"
        let register = RegisterModel(name: firstName + lastName, email: email, password: password)
        
        APIManager.shareInstance.callingRegisterApi(register: register)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        let email = "xyz@gmail.com"
        let password = "123456"
        let firstName = "mark"
        let lastName = "smith"
        let register = RegisterModel(name: firstName + lastName, email: email, password: password)
        APIManager.shareInstance.callingLoginApi(register: register)
    }
    
}

