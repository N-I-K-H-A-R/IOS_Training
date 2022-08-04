//
//  ViewController.swift
//  Quiz App
//
//  Created by user225488 on 7/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizLogic = QuizLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateScreen()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text
        let userResult = quizLogic.checkAnswer(userAnswer: userAnswer!)
        
        if userResult {
            sender.backgroundColor = UIColor.green
            scoreLabel.text = String(quizLogic.score)
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizLogic.getNextQuestion()

        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateScreen), userInfo: nil, repeats: false)
            
    }
    
    @objc func updateScreen() {
        questionLabel.text = quizLogic.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizLogic.getProgress()
        if quizLogic.resetScore() {
             scoreLabel.text = String(quizLogic.score)
        }
    }
}

