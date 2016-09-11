//
//  Card.swift
//  Penisland
//
//  Created by Dan Patey on 5/26/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//
import UIKit

class Card: NSObject {
    let title: String
    let short_title: String
    let rule_description: String
    let rules: [String]?
    let image: UIImage
    
    init(title: String, short_title: String, rule_description: String, rules: [String]?, image: UIImage) {
        self.title = title
        self.short_title = short_title
        self.rule_description = rule_description
        self.rules = rules
        self.image = image
    }
}
