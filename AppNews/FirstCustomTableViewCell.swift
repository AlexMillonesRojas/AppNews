//
//  FirstCustomTableVieewCell.swift
//  AppNews
//
//  Created by Edgar Alexander on 20/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

class FirstCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var ImageCell: UIImageView!
    @IBOutlet weak var Antetitular: UILabel!
    @IBOutlet weak var Titular: UILabel!
    @IBOutlet weak var Tiempo: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
