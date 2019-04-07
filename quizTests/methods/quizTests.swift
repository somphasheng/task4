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

    func testSetUpData()   {
        let total=4
        let vCon=ViewController()
        let score=vCon.calculateScore(score: total, scoreModule: 2)
        XCTAssertEqual(score, 6)
        
    }
}
