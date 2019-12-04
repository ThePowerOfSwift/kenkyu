//
//  QuestionBank.swift
//  algo
//
//  Created by yuta akatsu on 2019/10/25.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import Foundation
class QuestionBank{
    var questionList = [Question]()
    init(){
    let question1 = Question(text: "1st",correctAnswer: true)
        let question2 = Question(text: "2",correctAnswer: true)
        let question3 = Question(text: "3",correctAnswer: true)
        let question4 = Question(text: "4",correctAnswer: true)
        let question5 = Question(text: "5",correctAnswer: true)
        let question6 = Question(text: "6",correctAnswer: true)
        let question7 = Question(text: "7",correctAnswer: true)
        let question8 = Question(text: "8",correctAnswer: true)
        let question9 = Question(text: "9",correctAnswer: true)
        let question10 = Question(text: "10",correctAnswer: true)
        let question11 = Question(text: "end",correctAnswer: true)
        questionList.append(question1)//index0
         questionList.append(question2)
        questionList.append(question3)
        questionList.append(question4)
        questionList.append(question5)
        questionList.append(question6)
        questionList.append(question7)
        questionList.append(question8)
        questionList.append(question9)
        questionList.append(question10)
        questionList.append(question11)
        
    }
}


