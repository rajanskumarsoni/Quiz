//
//  ViewController.swift
//  Quiz
//
//  Created by Rajan Kumar Soni on 19/07/18.
//  Copyright © 2018 Rajan Kumar Soni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerlabel : UILabel!
    let questions : [String] = ["waht is 7+7?", "what is capital of vermont?", "what is cognac made from"]
    let answers : [String] =  ["14", "montpelier", "graphs"]
    var currentQuestionIndex : Int = 0
    
    @IBAction func showNwxtQuestion(_ sender : UIButton)
    {
        currentQuestionIndex += 1;
        if currentQuestionIndex == questions.count
        {
            currentQuestionIndex = 0
        }
        let question : String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerlabel.text = "???"
    
    }
    @IBAction func showAnswer(_ sender : UIButton)
    {
        let answer : String = answers[currentQuestionIndex]
        answerlabel.text = answer
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
  
   


}

