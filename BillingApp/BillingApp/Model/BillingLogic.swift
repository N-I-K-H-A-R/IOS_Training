//
//  BillingLogic.swift
//  BillingApp
//
//  Created by user225488 on 7/29/22.
//

import Foundation

class BillingLogic {
    var billAmount = 0.0
    func updateBillAmount(tip: Double) -> Double {
        billAmount += tip
        return billAmount
    }
    
    func splitBillAmount (splitBy: Character) -> Double {
        switch splitBy {
        case "1" :
            billAmount /= 3
        case "2" :
            billAmount = (billAmount * 2) / 3
        case "3" :
            billAmount *= 1
        default :
            print("error")
        }
        return billAmount
    }
}
