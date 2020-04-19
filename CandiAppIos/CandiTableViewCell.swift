//
//  CandiTableViewCell.swift
//  CandiAppIos
//
//  Created by Joe G on 19/04/20.
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import UIKit

class CandiTableViewCell: UITableViewCell {

    @IBOutlet weak var photoCandi: UIImageView!
    @IBOutlet weak var titleCandi: UILabel!
    @IBOutlet weak var descCandi: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
