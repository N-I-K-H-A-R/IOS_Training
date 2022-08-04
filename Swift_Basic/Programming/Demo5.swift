//
//  Demo5.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation

// creating a generic class
class Information<T>{
    
    // property of T type
    var data: T
    
    init(data: T){
        self.data = data
    }
    
    // method that return T type variable
    func getData() -> T {
        return self.data
    }
}

// initilaize generic class with Int Data
var inkObj = Information<Int>(data: 6)

var strObj = Information<String>(data: "Hello")
