//
//  ViewController.swift
//  quizzlerProject
//
//  Created by Mitali Gupta on 04/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer: String? = sender.titleLabel?.text
//        let actualAnswer: String = quiz[questionNumber].answer
        let userGotItRight = quizBrain.checkAnswer(userAnswer!)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
//        if questionNumber + 1 < quiz.count {
//            questionNumber += 1
//        }else{
//            questionNumber = 0
//        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:#selector(updateUI), userInfo:nil, repeats: false)
         
    }
     @objc func updateUI(){
         questionLabel.text = quizBrain.getQuestionText()
         progressBar.progress = quizBrain.getProgress()
         scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
     


    }
}

