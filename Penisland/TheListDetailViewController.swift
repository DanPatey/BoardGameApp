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
    @IBOutlet weak var cardImage: UIImageView!
    
    @IBAction func rightSwipe(_ sender: AnyObject) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func showAlert() {
        // Generate a random response and display it
        let randomIndex = Int(arc4random_uniform(UInt32((myCard?.rules!.count)!)))
        let randomItem = myCard?.rules![randomIndex]
        
        let alertController = UIAlertController(title: "Generate Random", message: randomItem, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
    var myCard: Card? {
        didSet {
            fillViewsWithCard()
            if myCard?.rules == nil {
                rulesRandomizer.isHidden = true
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillViewsWithCard()
        rulesRandomizer.layer.cornerRadius = 25
    }
    
    func fillViewsWithCard() {
        if self.view == nil {
            return
        }
        shortTitle.text = myCard?.short_title
        rulesText.text = myCard?.rule_description        
        cardImage.image = myCard?.image
    }
}
