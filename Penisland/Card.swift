//
//  Card.swift
//  Penisland
//
//  Created by Dan Patey on 5/26/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//
import Foundation

class Card: NSObject {
    let title: String
    let rule_description: String
    let rules: [String]?
    
    init(title: String, rule_description: String, rules: [String]?) {
        self.title = title
        self.rule_description = rule_description
        self.rules = rules
    }
}