//
//  TipTestAppTests.swift
//  TipTestAppTests
//
//  Created by Varun Gupta on 03/08/22.
//

import XCTest

class TipTestAppTests: XCTestCase {

    func test_add_two_numbers(){
        let result = 3 + 5
        
        XCTAssertEqual(result, 8)
    }
    
    func test_getArea(){
        let length = 100
        let height = 200
        let area = length * height
        
        XCTAssertEqual(area, 20000)
    }

}
