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
    
        let backView = UIView.init(frame: CGRect(x: 0,y: 0,width: 10,height: 20))
        let imageView = UIImageView(image: UIImage(named: "SmallLogo"))
        imageView.frame = CGRectMake(4, 5, imageView.frame.size.width, imageView.frame.size.width)
        backView.addSubview(imageView)
        self.navigationItem.titleView = imageView
       
    }
    
    // TableView Delegate and Datasource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CardManager.allCards.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Designs the cell *could be subclassed*
        let cell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        cell.layer.borderWidth = 2.0
        cell.layer.borderColor = UIColor.blackColor().CGColor
        cell.accessoryView =  UIImageView.init(image: UIImage(named: "menu dots icon"))
        
        // Displays flash icons on the random generate ones
        let selectedCard = CardManager.allCards[indexPath.row]
        
        if selectedCard.rules != nil {
        cell.accessoryView = UIImageView.init(image: UIImage(named: "flash icon"))
        }
        
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








