//
//  round.swift
//  AppNews
//
//  Created by Edgar Alexander on 17/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

extension UIButton {
    //Borde redondo
    func round() {
        layer.cornerRadius = bounds.height / 2
    clipsToBounds = true
    }
}

