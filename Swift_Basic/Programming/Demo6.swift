//
//  Demo6.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation

func addition<T: Numeric>(num1: T, num2: T){
    print("Sum: ", num1 + num2)
}


addition(num1: 10, num2: 20)
addition(num1: 10.0, num2: 20.0)
//addition(num1: true, num2: false)
