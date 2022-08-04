//
//  Question.swift
//  Quiz App
//
//  Created by user225488 on 7/26/22.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String){
        text = q
        answer = a
    }
}
