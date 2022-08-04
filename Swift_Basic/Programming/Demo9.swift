//
//  Demo9.swift
//  TipTestApp
//
//  Created by Varun Gupta on 03/08/22.
//

import Foundation
protocol AdvanceLifeSupport{
    func perfomeEmergencySupport()
}

class EmergencyCallHandler{
    var delegate: AdvanceLifeSupport?
    
    func assessSituation(){
        print("explain the sitution")
    }
    
    func medicalEmergency(){
        delegate?.perfomeEmergencySupport()
    }
}

struct Doctor: AdvanceLifeSupport{
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func perfomeEmergencySupport() {
        print("start treatment")
    }
}
