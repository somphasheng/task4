//
//  quizUITests.swift
//  quizUITests
//
//  Created by sophia on 6/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import XCTest

class quizUITests: XCTestCase {

    func testNextBnt() {
   
        let app = XCUIApplication()
        app.buttons["2014"].tap()
        let nextButton = app.buttons["Next"]
        nextButton.tap()
        app.buttons["Let"].tap()
        nextButton.tap()
        
    }

}
