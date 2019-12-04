//
//  Question.swift
//  algo
//
//  Created by yuta akatsu on 2019/10/25.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import Foundation
class Question{
    let questionText: String
    let answer: Bool
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
}
