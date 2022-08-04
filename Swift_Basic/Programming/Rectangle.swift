//
//  Rectangle.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation

protocol Rectangle{
    func getAread(length: Int, breadth: Int)
}

class Calculate: Rectangle{
    func getAread(length: Int, breadth: Int) {
        print("Area ", length * breadth)
    }
}


