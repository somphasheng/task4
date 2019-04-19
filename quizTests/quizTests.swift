//
//  quizTests.swift
//  quizTests
//
//  Created by sophia on 6/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import XCTest
@testable import quiz
class quizTests: XCTestCase {

    func testCalculateScore()   {
        //given
        let total=4
        let vCon=ViewController()
        //when
        let score=vCon.calculateScore(score: total, scoreModule: 2)
        //then
        XCTAssertEqual(score, 6,"score computed from quess is right")
        
    }
    func testNumberOfQuestion()   {
        //given
        let vCon=ViewController()
        //when
        let questions=vCon.setUpQuestion()
        //then
        XCTAssertEqual(questions.count, 6,"Number of questions computed from guess is wrong")
        
    }
    
    func testCorrectAnswer()   {
        //given
        let inputCorrectAns=2
        //when
        let mQuestion1=Question(question: "What is your name?", answer: ["Somphas","Sophia"], correctAnswer: 1)
        //then
        XCTAssertEqual(mQuestion1.correctAnswer, inputCorrectAns,"The answer computed from guess is wrong")
        
        
    }
}
