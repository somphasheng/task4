//
//  quizDataTests.swift
//  quizTests
//
//  Created by sophia on 6/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import XCTest
@testable import quiz
class quizDataTests: XCTestCase {

    func testSetUpData()   {
        
        let vCon=ViewController()
        let questions=vCon.setUpQuestion()
        XCTAssertEqual(questions.count, 5)
        
    }


}
