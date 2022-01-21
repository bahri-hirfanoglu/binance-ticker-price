//
//  ChangeTableCellTableViewCell.swift
//  BtcWorth
//
//  Created by Admin on 21.01.2022.
//

import UIKit

class ChangeTableCell: UITableViewCell {

    @IBOutlet weak var imageVew: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
