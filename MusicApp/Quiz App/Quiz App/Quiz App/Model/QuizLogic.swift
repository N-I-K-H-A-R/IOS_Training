//
//  QuizLogic.swift
//  Quiz App
//
//  Created by user225488 on 7/27/22.
//

import Foundation

struct QuizLogic {
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q:"One + One is equal to Two", a: "True"),
        Question(q:"One + Three is equal to Four", a: "True"),
        Question(q:"Three - Two is equal to Two", a:"False"),
        Question(q:"Five - Three is equal to Two", a: "True"),
        Question(q: "Six + One is equal to Nine", a: "False")
    ]
    
    func getQuestionText () -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress () -> Float {
       return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getNextQuestion () {
        if questionNumber + 1 < quiz.count {
        questionNumber += 1
        }else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func resetScore () -> Bool {
        if questionNumber == 0 {
            score = 0
            return true
        } else {
            return false
        }
    }
    
   mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
        return false
        }
    }
}
