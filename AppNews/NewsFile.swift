//
//  NewsFile.swift
//  AppNews
//
//  Created by Edgar Alexander on 16/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import Foundation
import UIKit
class NewsFile {
 var Antetilular = ""
 var Tiempo = "hace 1 hora"
 var Imagen = UIImage() //= UIImage(named: "Tecnología")!
 var Fecha = "../../...."
 var Titular = ""
 var Subtitulo = ""
 var Texto = ""
 var rawtext = Rawtext()
    
    func selectImage(_ name:String) {
        Imagen = UIImage(named: name)!
    }
}

class Rawtext {
    var Text = "..."
    var Imagen = "..."
    var TitleImage = ""
}

