//
//  TheListDetailController.swift
//  Penisland
//
//  Created by Dan Patey on 5/26/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit
import Foundation

class TheListDetailViewController: UIViewController {
    @IBOutlet weak var rulesText: UITextField!
    //@IBOutlet weak var rulesText: UITextView!
    @IBOutlet weak var rulesRandomizer: UIButton!
    
    @IBAction func rightSwipe(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func showAlert() {
        // Generate a random response and display it
        let randomIndex = Int(arc4random_uniform(UInt32((myCard?.rules!.count)!)))
        let randomItem = myCard?.rules![randomIndex]

        let alertController = UIAlertController(title: "The Randomizer!", message: randomItem, preferredStyle: .Alert)
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    var myCard: Card? {
        didSet {
            fillViewsWithCard()
            if myCard?.rules == nil {
                rulesRandomizer.hidden = true
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        fillViewsWithCard()
    }
    
    func fillViewsWithCard() {
        if self.view == nil {
            return
        }
        rulesText.text = myCard?.rule_description
    }
}


