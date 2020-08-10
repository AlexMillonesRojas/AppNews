//
//  NewsFile.swift
//  AppNews
//
//  Created by Edgar Alexander on 16/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift
class NewsFile {
 var Antetilular = ""
 var Tiempo = ""
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
class News: Object {
    @objc dynamic var id = 0
    @objc dynamic var Antetilular: String?
    @objc dynamic var Tiempo: String?
    @objc dynamic var Fecha: String?
    @objc dynamic var Titular: String?
    @objc dynamic var Subtitulo: String?
    @objc dynamic var Texto: String?
    override static func primaryKey() -> String? {
        return "id"
    }
}
