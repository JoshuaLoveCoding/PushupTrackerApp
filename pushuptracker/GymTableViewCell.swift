//
//  GymTableViewCell.swift
//  pushuptracker
//
//  Created by Joshua on 11/26/18.
//  Copyright © 2018 Joshua. All rights reserved.
//

import UIKit

class GymTableViewCell: UITableViewCell {
    
    @IBOutlet weak var gymNameLabel: UILabel!
    @IBOutlet weak var gymAddressLabel: UILabel!
    @IBOutlet weak var gymLogoImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
