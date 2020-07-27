//
//  SecondCustomTableViewCell.swift
//  AppNews
//
//  Created by Edgar Alexander on 20/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

class SecondCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var ImageCell: UIImageView!
    @IBOutlet weak var Antetitular: UILabel!
    @IBOutlet weak var Titular: UITextView!
    @IBOutlet weak var Tiempo: UILabel!
    @IBOutlet weak var button: UIButton!
    var news = NewsFile()
    @IBAction func ActionButton(_ sender:Any) {
        print (news.Antetilular)
        let mainStoryBorad = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let mainNavigationVC = mainStoryBorad.instantiateViewController(identifier: "FullNews") as? FullNewsViewController else{
            return
        }
        mainNavigationVC.present(mainNavigationVC, animated: true, completion: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
