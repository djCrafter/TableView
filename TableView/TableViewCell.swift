//
//  TableViewCell.swift
//  TableView
//
//  Created by Crafter on 5/4/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {    
    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var lableName: UILabel!
    @IBOutlet weak var lablePhone: UILabel!
    
    var contact: Contact? {
        didSet{
            if let image = contact?.photoName {
                contactImage.image = UIImage(named: image)
            }
            lableName.text = contact?.name
            lablePhone.text = contact?.phone
        }
    }
}
