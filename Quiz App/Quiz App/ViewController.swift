//
//  ViewController.swift
//  Quiz App
//
//  Created by amin on 1/26/19.
//  Copyright © 2019 amin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // varibles and constants
    let allQuestions = QuestionBank() // object of QuestionBank Class that is of type of Question
    var dublicatedQ = [Int]() // array to control redundency of questions
    var pickedAns : Bool = false // determine user chose true or false button
    var questionNumber:Int = 1 // indicate which question number we are currently point to
    var statuesOfAns:Bool = false // determine user answer is true or false
    var numberOfCorrectAns : Int = 0
    var counter = 1 // number of current question according to all questions (incresing order)
    
    
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var ProgressLabel: UILabel!
    @IBOutlet weak var ProgressBar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0 ..< allQuestions.questionsArray.count {
            dublicatedQ.append(i+1)
        }
        progressUpdate()
        checkNewQuestion()
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAns = true
        }else if sender.tag == 2{
            pickedAns = false
        }
        
        checkanswer()
        progressUpdate()
        pickedAns = false
        checkNewQuestion()
    }
    
    
    func getQuestion(){
        QuestionLabel.text = allQuestions.questionsArray[questionNumber].questionTitle
    }
    
    
    func checkNewQuestion(){
      
        questionNumber = Int(arc4random_uniform(UInt32(allQuestions.questionsArray.count ))) // picked random question
        if dublicatedQ.contains(questionNumber+1){ // index 0 = 1 ?
            dublicatedQ[questionNumber] = 0 // whenever we used a Question we make it equal to zero to not pick again
        }else{
            while dublicatedQ[questionNumber] != questionNumber+1{ // if it gives me redundunt question that while will solve
                questionNumber = Int(arc4random_uniform(UInt32(allQuestions.questionsArray.count )))
            }
            dublicatedQ[questionNumber] = 0
        }
        

        if allQuestions.questionsArray.count >= counter{
            getQuestion()
        }else {
            // alert the user that all The question is finished
            
            let alert = UIAlertController(title: "Awesome!", message: "We have finished all the question , Do you want to start over ?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .destructive) { (UIAlertAction) in
                self.restart()
            }
            
            alert.addAction(restartAction)
            present(alert,animated: true,completion: nil)

        }
    }
    
    func restart(){
        
        self.questionNumber = 1
        self.counter = 1
        self.numberOfCorrectAns = 0
        self.progressUpdate()
        self.getQuestion()
        for i in 0 ..< allQuestions.questionsArray.count {
            dublicatedQ.append(i+1)
        }
        
    }
    
    
    func checkanswer(){
        if pickedAns == allQuestions.questionsArray[questionNumber].answer{
           ProgressHUD.showSuccess("Correct")
            statuesOfAns = true
        }else{
            ProgressHUD.showError("Wrong")
            statuesOfAns = false
        }
    }
    
    
    func progressUpdate(){
        print(counter)
        if statuesOfAns == true{
            numberOfCorrectAns += 1
        }
        //ProgressLabel.text = "\(questionNumber)/20"
        ProgressLabel.text = "\(counter)/20"
        Score.text = "Score :\(numberOfCorrectAns)"
        ProgressBar.frame.size.width = (view.frame.size.width / CGFloat( allQuestions.questionsArray.count)) * CGFloat (counter )
        statuesOfAns = false // reset of the statues of the upcoming picked
        counter += 1
    }
}



