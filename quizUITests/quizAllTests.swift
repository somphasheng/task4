//
//  quizAllTests.swift
//  quizUITests
//
//  Created by sophia on 6/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import XCTest

class quizAllTests: XCTestCase {

    func testWholeApp() {
        
        let app = XCUIApplication()
        let nextButton = app.buttons["Next"]
        nextButton.tap()
        app.buttons["Con"].tap()
        nextButton.tap()
        app.buttons["/* and */"].tap()
        nextButton.tap()
        app.buttons["Dictionary & array"].tap()
        nextButton.tap()
        app.buttons["Optional"].tap()
        nextButton.tap()
        
        
    }
}
