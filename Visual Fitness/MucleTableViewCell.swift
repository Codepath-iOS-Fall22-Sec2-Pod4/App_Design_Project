//
//  MucleTableViewCell.swift
//  Visual Fitness
//
//  Created by Krina Patel on 11/11/22.
//

import UIKit

class MucleTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var mucleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
