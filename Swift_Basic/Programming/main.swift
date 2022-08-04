//
//  main.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation

class Bird {
    var isFemale = true
    
    func layEggs(){
        if isFemale {
            print("the bird can lay eggs")
        }
    }
    
    func fly(){
        print("bird can fly")
    }
}

struct FlyingMusume {
    func flyingOption(flyObject: Bird){
        flyObject.fly()
        }
    )
}

class Eagle : Bird{
    func soar(){
        print("this eagle in usign airs")
    }
}

class Penguin: Bird{
    func swim(){
        print("this is penguine")
    }
}



let myEagle = Eagle()
myEagle.fly()
myEagle.layEggs()
myEagle.soar();

let muPenguine = Penguin();
muPenguine.layEggs()
muPenguine.swim()
muPenguine.fly()

let musum = FlyingMusume(flyingOption: myEagle)
