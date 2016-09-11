//
//  TheListDetailController.swift
//  Penisland
//
//  Created by Dan Patey on 5/26/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit

class TheListDetailViewController: UIViewController {
    @IBOutlet weak var shortTitle: UITextView!
    @IBOutlet weak var rulesText: UITextField!
    @IBOutlet weak var rulesRandomizer: UIButton!
    @IBOutlet weak var cardImage: UIImage!
    
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
        shortTitle.text = myCard?.short_title
        rulesText.text = myCard?.rule_description
        //Make this display something, then have it display from the array
        cardImage = UIImage(named: "the_toast.png")
        print("running fillsViewsWithCard")
    }
}
