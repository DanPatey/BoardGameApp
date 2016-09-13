//
//  ViewController.swift
//  Penisland
//
//  Created by Dan Patey on 5/22/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var instructions: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGame.layer.cornerRadius = 4
        instructions.layer.cornerRadius = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
