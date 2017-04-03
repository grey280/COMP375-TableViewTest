//
//  TableViewCell.swift
//  TableViewTest
//
//  Created by Grey Patterson on 2017-04-03.
//  Copyright © 2017 Grey Patterson. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    /// The label to display on the cell
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
