//
//  PenislandUITests.swift
//  PenislandUITests
//
//  Created by Dan Patey on 4/11/17.
//  Copyright © 2017 Dan Patey. All rights reserved.
//

import XCTest

class PenislandUITests: XCTestCase {
    
    var app: XCUIApplication!
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    func testCanNavigateToInstructionsPage() {
        app.buttons["Instructions"].tap()
        
        let webViewsQuery = app.webViews
        webViewsQuery.staticTexts["All players choose a game piece and begin at the Start. As a group, decide what the standard penalty will be for losing a round (examples: Take 1 Drink, Do 10 Push-ups, Say 5 Hail Mary's, etc.). This will be enforced throughout the game as the \"Loser Penalty\". In addition, a cup may be placed in the center of the board and filled with whatever vile concoction is deemed appropriate for the loser of the game...this is known as the \"Loser's Brew\"."].tap()
        webViewsQuery.staticTexts["The game plays like any normal board game. Beginning with The Most Sexually Experienced person at the table, each player takes turns rolling the die and advancing their game piece the rolled number of spaces with the arrival at the Finish being the ultimate goal (hopefully not by way of Pen island...the land for terrible members of the game)."].tap()
        webViewsQuery.staticTexts["The description of each space is found within this app. Certain spaces will also prompt you to draw random themes or actions (similar to drawing a card)...it will make sense as you go. If a player loses a mini-game or fails to adequately complete their task, they shall be subject to the \"Loser Penalty\". The game is over when the last player in the game crosses the finish or consumes the \"Loser's Brew\"."].tap()
    }
    
    func testScrollViewPresentsCardsCorrectly() {
        app.buttons["Start Game"].tap()
        
        let tablesQuery = app.tables
        tablesQuery.staticTexts["13) The Most Likely To"].swipeUp()
        tablesQuery.cells.containing(.staticText, identifier:"30) Go Back 15 Spaces").children(matching: .staticText).matching(identifier: "30) Go Back 15 Spaces").element(boundBy: 0).swipeUp()
        tablesQuery.cells.containing(.staticText, identifier:"8) Tunes Master").children(matching: .staticText).matching(identifier: "8) Tunes Master").element(boundBy: 0).swipeDown()
    }
    
    func testRandomizerWorksInCard() {
        app.buttons["Start Game"].tap()
        app.tables.staticTexts["2) Name Master"].tap()
        app.buttons["Generate Random"].tap()
        
        let generateRandomAlert = app.alerts["Generate Random"]
        generateRandomAlert.staticTexts["Generate Random"].tap()
        generateRandomAlert.buttons["OK"].tap()
    }
}
