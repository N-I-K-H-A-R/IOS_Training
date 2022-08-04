//
//  TipCalculatorTest.swift
//  TipTestAppTests
//
//  Created by Varun Gupta on 03/08/22.
//

import XCTest

class TipCalculatorTest: XCTestCase {

    func test_should_calculate_tip_successfully(){
        let tipCalculator = TipCalculator()
        let tip = try! tipCalculator.calculate(total: 100, tipPercentage: 0.1)
        XCTAssertEqual(10, tip)
    }

    
    func test_should_throw_invalid_input_exception(){
        let tipCalculator = TipCalculator()
        XCTAssertThrowsError(try tipCalculator.calculate(total: -100, tipPercentage: 0.1), ""){
            error in XCTAssertEqual(error as! TipCalculatorError, TipCalculatorError.invalidInput)
        }
        
    }

}
