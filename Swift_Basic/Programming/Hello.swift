//
//  Hello.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation

protocol Greet{
    var name: String { get }
    
    func message()
}

class Employee: Greet{
    var name = "Mark"
    
    func message() {
        print("Good morning")
    }
}

// var emp = Employee()
// emp.message()
