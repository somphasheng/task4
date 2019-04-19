//
//  quizUITests.swift
//  quizUITests
//
//  Created by sophia on 6/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import XCTest
@testable import quiz

class quizUITests: XCTestCase {

    var app:XCUIApplication!
    var controller:ViewController!
    
    override func  setUp() {
        super.setUp()
        app=XCUIApplication()
       
        
    }
    
    func testDisabledBtnAns()
    {
        app.launch()
        
        let ansBtn1=app.buttons["2013"]
        let ansBtn2=app.buttons["2014"]
        let ansBtn3=app.buttons["2015"]
        let ansBtn4=app.buttons["2016"]
        
        XCTAssertTrue(ansBtn1.exists)
        XCTAssertTrue(ansBtn2.exists)
        XCTAssertTrue(ansBtn3.exists)
        XCTAssertTrue(ansBtn4.exists)
        
        ansBtn1.tap()
        
        XCTAssertFalse(ansBtn2.isEnabled,"Button  2 is disable")
        XCTAssertFalse(ansBtn3.isEnabled,"Button  3 is disable")
        XCTAssertFalse(ansBtn4.isEnabled,"Button  4 is disable")
        
        
    }

    func testSelectedAnswer()
    {
        app.launch()
        let ansBtn=app.buttons["2014"]
        XCTAssertTrue(ansBtn.exists)
        let scoreLabel=app.staticTexts["0"]
        XCTAssertTrue(scoreLabel.exists)
        ansBtn.tap()
        
         let scoreLabel1=app.staticTexts["2"]
        XCTAssertTrue(scoreLabel1.exists,"Selected answer given by guess e")
        
    }
    
  /*  func testSegue()
    {
        app.launch()
        
        
         let storyboard = UIStoryboard(name: "Main", bundle: Bundle(for: type(of: self)))
        
        controller=storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
        
        
         UIApplication.shared.keyWindow?.rootViewController=controller
         
         controller.performSegue(withIdentifier: "segue", sender: nil)
         
         XCTAssertNotNil(controller.presentedViewController)
        
        
        
        
    }*/

}
