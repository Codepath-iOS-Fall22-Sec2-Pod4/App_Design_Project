//
//  LiftingTableViewCell.swift
//  Visual Fitness
//
//  Created by Krina Patel on 11/15/22.
//

import UIKit

class LiftingTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var liftingExercise: UILabel!
    @IBOutlet weak var liftingInstruction: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
