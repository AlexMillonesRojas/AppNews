//
//  FullNewsViewController.swift
//  AppNews
//
//  Created by Edgar Alexander on 23/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

class FullNewsViewController: UIViewController {
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var antetitular: UILabel!
    @IBOutlet weak var deportes: UIImageView!
    @IBOutlet weak var tiempo: UILabel!
    @IBOutlet weak var titular: UILabel!
    @IBOutlet weak var subtitulo: UILabel!
    @IBOutlet weak var texto: UITextView!
    var news = NewsFile()
    override func viewDidLoad() {
        super.viewDidLoad()
            antetitular.text = news.Antetilular
            subtitulo.text = news.Subtitulo
            texto.text = news.Texto
            fecha.text = news.Fecha
            titular.text = news.Titular
            deportes.image = news.Imagen
    }
    
}
