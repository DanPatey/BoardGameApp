//
//  CustomTableViewCell.swift
//  Penisland
//
//  Created by Courtney Osborne on 8/13/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.blackColor().CGColor
        accessoryView =  UIImageView.init(image: UIImage(named: "flash icons"))
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
