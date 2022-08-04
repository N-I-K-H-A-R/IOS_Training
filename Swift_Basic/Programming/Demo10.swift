//
//  Demo10.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation

//{
// print("")
//}


//{
//    (parameters) -> returnType in
//    // stateemnt
//}


var greet = {
    print("Hello")
}

//greet()

let greetUser = { (name: String) in
    print("Hello \(name)")
}


var firstSquate = { (num: Int) -> (Int) in
    var square = num * num
    return square
}



func dosomething(search: () -> ()){
    search()
}



