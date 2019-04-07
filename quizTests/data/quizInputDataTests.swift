//
//  quizSetScoreTests.swift
//  quizTests
//
//  Created by sophia on 6/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import XCTest
@testable import quiz
class quizInputDataTests: XCTestCase {

    func testInputDataToView()   {
        
        let inputCorrectAns=2
        
        let mQuestion1=Question(question: "What is your name?", answer: ["Somphas","Sophia"], correctAnswer: 1)
        XCTAssertEqual(mQuestion1.correctAnswer, inputCorrectAns)
      
        
    }

}
