//
//  quizViewController.swift
//  algo
//
//  Created by yuta akatsu on 2019/10/25.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class quizViewController: UIViewController {
    var sum: Int!
    
    //outlet
    @IBOutlet weak var rf: UILabel!
    @IBOutlet weak var quiz: UILabel!
    @IBOutlet weak var numberquiz: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var barScore: UIView!
    
    let allQuestion = QuestionBank()
    var pickedAnswer = false
    var qustionNumber = 0
    var score: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Answer(_ sender: UIButton) {
        if sender.tag == 1{
        pickedAnswer=true
            print ("yes")
            
            
        }else if sender.tag == 2
        {
        pickedAnswer = false
        print("No")
        }
        
       
        
        cheakanswer()
        qustionNumber = qustionNumber + 1
        nextq()
     
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func updateUI(){
    
        Score.text = "Score: \(score)"
        if qustionNumber <= 10{
        numberquiz.text  = "\(qustionNumber + 1)/10"
        }
        barScore.frame.size.width = (self.view.frame.width / 10) * CGFloat (qustionNumber + 1)
    }
    func nextq(){
        if qustionNumber <= 10{
            quiz.text = allQuestion.questionList[qustionNumber].questionText
            updateUI()
            rff()
        }else {
            let alert = UIAlertController(title:"End the quiz", message: "Return quiz?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Resturt", style: .default){
          (alertAction) in self.restart()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
       }
    }
    
    
    func cheakanswer(){
        let correctAnswer = allQuestion.questionList[qustionNumber].answer
        
        if correctAnswer  == pickedAnswer{
            score = score + 10
            
        }else {
            
        }
        
    }
    func restart(){
        qustionNumber = 0
        score = 0
        nextq()
    }
    func rff(){
        let correctAnswer = allQuestion.questionList[qustionNumber].answer
        if correctAnswer == pickedAnswer{
        rf.text = "Right"
    }else {rf.text = "False"
    
    }
            
        }
        
    }


