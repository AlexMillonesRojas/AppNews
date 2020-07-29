//
//  SecondCustomTableViewCell.swift
//  AppNews
//
//  Created by Edgar Alexander on 20/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

protocol SecondCustomTableViewCellDelegate: class {
    func SecondCustomTableViewCell (_ viewController: SecondCustomTableViewCell, _ news: NewsFile)
}

class SecondCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var ImageCell: UIImageView!
    @IBOutlet weak var Antetitular: UILabel!
    @IBOutlet weak var Titular: UITextView!
    @IBOutlet weak var Tiempo: UILabel!
    @IBOutlet weak var button: UIButton!
    var news = NewsFile()
    weak var delegate: SecondCustomTableViewCellDelegate?
    @IBAction func ActionButton(_ sender:Any) {
        self.delegate?.SecondCustomTableViewCell(self, news)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
