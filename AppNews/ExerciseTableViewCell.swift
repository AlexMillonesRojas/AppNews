//
//  ExerciseTableViewCell.swift
//  AppNews
//
//  Created by Edgar Alexander on 16/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var Antetitular: UILabel!
    @IBOutlet weak var Titular: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCell.layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
