//
//  SideBarCell.swift
//  SaloonApp
//
//  Created by haider ali on 08/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class SideBarCell: UITableViewCell {
    @IBOutlet weak var menuImageView: CircularImageView!
    @IBOutlet weak var menuTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
