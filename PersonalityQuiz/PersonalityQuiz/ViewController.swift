//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Sam Faraone on 4/30/19.
//  Copyright © 2019 Sam Faraone. All rights reserved.
//

import UIKit
struct Question{
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [Question(Question: "What is my favorite color?", Answers: ["Blue","Red","Green","Yellow"], Answer: 0), Question(Question: "What is my dog's name?", Answers: ["Sprinkle","Bubble","Sparkle","Rainbow"], Answer: 2), Question(Question: "What month is my birthday?", Answers: ["January","April","September","November"], Answer: 3), Question(Question: "What is my middle name?", Answers: ["Le","Lin","Lye","La"], Answer: 0)]
        PickQuestion()
    }
    
    func PickQuestion(){
        if Questions.count > 0{
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            Questions.removeAtIndex(QNumber)
        }
        else{
            NSLog("Done!")
        }
    }

    @IBAction func Btn1(_ sender: Any) {
        if AnswerNumber == 0{
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
    }
    @IBAction func Btn2(_ sender: Any) {
        if AnswerNumber == 1{
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
    }
    @IBAction func Btn3(_ sender: Any) {
        if AnswerNumber == 2{
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
    }
    @IBAction func Btn4(_ sender: Any) {
        if AnswerNumber == 3{
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
    }
    
}

