//
//  CardManagerTests.swift
//  Penisland
//
//  Created by Dan Patey on 4/11/17.
//  Copyright © 2017 Dan Patey. All rights reserved.
//

import XCTest
@testable import Penisland

class CardManagerTests: XCTestCase {
    
    func testCollectionHasItemsCount() {
        XCTAssert(CardManager.allCards.count == 40, "Collection didn't have the expected number of items")
    }
    
    func testCardHasExpectedValues() {
        XCTAssertEqual(CardManager.card1.title, "1) The Toast")
        XCTAssertEqual(CardManager.card1.short_title, "The Toast")
        XCTAssertEqual(CardManager.card1.rule_description, "\"Cheers to the last time we will all be friends!\" The Roller must start the game off by proposing a group toast.")
        XCTAssert(CardManager.card1.rules == nil)
        XCTAssertEqual(CardManager.card1.image, UIImage(named: "the_toast.png"))
    }
}
