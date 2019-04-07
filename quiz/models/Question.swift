//
//  Question.swift
//  task-3-quize
//
//  Created by sophia on 7/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import Foundation

class Question: NSObject {
    var question:String
    var answer:[String]
    var correctAnswer:Int
    init(question:String,answer:[String],correctAnswer:Int) {
        self.question=question
        self.answer=answer
        self.correctAnswer=correctAnswer
    }

  
    
}
