///Users/sophia/Desktop/task-3-quize/task-3-quize/ViewController.swift
//  ViewController.swift
//  task-4-quize
//
//  Created by sophia on 26/3/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet weak var btnAns2: UIButton!
    @IBOutlet weak var btnAns1: UIButton!
    @IBOutlet weak var btnAns3: UIButton!
    @IBOutlet weak var btnAns4: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    
    var questions=[Question]()
    var score:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions=setUpQuestion()
        setQuestionToView()
        setBorderButton()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultController=segue.destination as! ResultController
        resultController.totalScore=String(score)
    }
    @IBAction func firstAnswerClick(_ sender: Any) {
        setDisableButton(sender:[btnAns2,btnAns3,btnAns4])
        if(questions[0].correctAnswer==1) {score=calculateScore(score: score,scoreModule: 2)}
        setScore()
    }
    @IBAction func secondAnswerClick(_ sender: Any) {
        setDisableButton(sender:[btnAns1,btnAns3,btnAns4])
        if(questions[0].correctAnswer==2) {score=calculateScore(score: score,scoreModule: 2)}
         setScore()
    }
    @IBAction func thirdAnswerClick(_ sender: Any) {
        setDisableButton(sender:[btnAns1,btnAns2,btnAns4])
        if(questions[0].correctAnswer==3) {score=calculateScore(score: score,scoreModule: 2)}
         setScore()
    }
    @IBAction func fourthAnswerClick(_ sender: Any) {
        setDisableButton(sender:[btnAns1,btnAns2,btnAns3])
        if(questions[0].correctAnswer==4) {score=calculateScore(score: score,scoreModule: 2)}
         setScore()
    }
    @IBAction func goToNextQ(_ sender: Any) {
        if(questions.count>1)
        {
            //set next question
            questions.remove(at: 0)
            setQuestionToView()
            releaseBtn(sender: [btnAns1,btnAns2,btnAns3,btnAns4])
           
        }
        else{
            
            performSegue(withIdentifier: "segue", sender: self)
         
            
        }
    }
    func setDisableButton(sender:[UIButton])
    {
        for i in 0...sender.count-1
        {
            sender[i].isEnabled=false
            sender[i].alpha=0.5
        }
    }
    func setUpQuestion()->[Question]
    {
        let q1=Question(question: "When swift is invented?", answer: ["2013","2014","2015","2016"], correctAnswer: 2)
        let q2=Question(question: "Which keyword do you use to annouce constants in swift?", answer: ["Var","Let","Con","Value"], correctAnswer: 2)
        let q3=Question(question: "How do you write comments in swift?", answer: ["*/ and */","/* and /*","/* and */","*/ and /*"], correctAnswer: 3)
        let q4=Question(question: "What are the collection type in swift", answer: ["Dictionary","Array ","library","Dictionary & array"], correctAnswer: 4)
        let q5=Question(question: "What does the question mark(?) indicate?", answer: ["Necessary","Optional","Changed","Missing"], correctAnswer: 2)
        
        return [q1,q2,q3,q4,q5]
        
    }
    func setQuestionToView()
{
    lbQuestion.text=questions[0].question
    btnAns1.setTitle(questions[0].answer[0], for: .normal)
    btnAns2.setTitle(questions[0].answer[1], for: .normal)
    btnAns3.setTitle(questions[0].answer[2], for: .normal)
    btnAns4.setTitle(questions[0].answer[3], for: .normal)
    
}
    func releaseBtn(sender:[UIButton])
    {
        for i in 0...sender.count-1
        {
            sender[i].isEnabled=true
            sender[i].alpha=1
        }
    }
    func setScore() {
        lbScore.text=String(score)
    }
func setBorderButton() {
        btnAns1.layer.cornerRadius=10
        btnAns1.layer.borderWidth=1
        btnAns1.layer.borderColor=UIColor.gray.cgColor
        btnAns2.layer.cornerRadius=10
        btnAns2.layer.borderWidth=1
        btnAns2.layer.borderColor=UIColor.gray.cgColor
        btnAns3.layer.cornerRadius=10
        btnAns3.layer.borderWidth=1
        btnAns3.layer.borderColor=UIColor.gray.cgColor
        btnAns4.layer.cornerRadius=10
        btnAns4.layer.borderWidth=1
        btnAns4.layer.borderColor=UIColor.gray.cgColor
    }
    func calculateScore(score:Int,scoreModule:Int) -> Int {
        return score+scoreModule
    }

}
