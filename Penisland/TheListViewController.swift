//
//  TheListController.swift
//  Penisland
//
//  Created by Dan Patey on 5/22/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit
import Foundation

class TheListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CardManager.allCards.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        return cell
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        let thisCard = CardManager.allCards[indexPath.row]
        cell.textLabel?.text = thisCard.title
        cell.textLabel?.backgroundColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
        cell.contentView.backgroundColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedCard = CardManager.allCards[indexPath.row]
        print("Selected ", selectedCard.title)
        let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("details") as! TheListDetailViewController
        detailViewController.myCard = selectedCard
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}