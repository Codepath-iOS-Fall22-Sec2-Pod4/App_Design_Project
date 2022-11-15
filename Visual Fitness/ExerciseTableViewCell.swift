//
//  ExerciseTableViewCell.swift
//  Visual Fitness
//
//  Created by Kaidi Gao on 11/14/22.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

    @IBOutlet weak var exerciseCell: UILabel!
    @IBOutlet weak var instructionCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
