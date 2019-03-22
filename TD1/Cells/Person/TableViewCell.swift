//
//  TableViewCell.swift
//  TD1
//
//  Created by Luca Debeir on 20/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nomPerson: UILabel!
    @IBOutlet weak var prenomPerson: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
