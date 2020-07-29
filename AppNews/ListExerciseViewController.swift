//
//  ListExerciseViewController.swift
//  AppNews
//
//  Created by Edgar Alexander on 16/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit
class ListExerciseViewController: UIViewController {
    var exercisesList = ["Deportes", "Tecnología", "Educación", "España"]
    var typeStr = "Tecnología"
    var news = [NewsFile]()
    var selectedNews = NewsFile()
    func noticia(){
        let url = Bundle.main.url(forResource: "News", withExtension: "json")
        print(url!)
       let data = NSData(contentsOf: url!)
        do{
            if let object = try JSONSerialization.jsonObject(with: data! as Data, options: []) as? [String: Any] {
                let newsfile = NewsFile()
                newsfile.Antetilular = object["Antetitular"] as! String
                newsfile.Fecha = object["Fecha"] as! String
                newsfile.Titular = object["Titular"] as! String
                newsfile.Subtitulo = object["Subtitulo"] as! String
                newsfile.Texto = object["Texto"] as! String
                newsfile.selectImage(object["Imagen"] as! String)
                news.append(newsfile)
            }
        }
        catch{
                print("error")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        let vc = segue.destination as? FullNewsViewController
            vc?.news = selectedNews
    }
    func  secondScene() {
        performSegue(withIdentifier: "CompleteNews", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        noticia()
    }
}
extension ListExerciseViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let cell =
                tableView.dequeueReusableCell(withIdentifier: "SecondCustomCell", for: indexPath) as! SecondCustomTableViewCell        
                cell.Antetitular.text = news[indexPath.row].Antetilular
                cell.Titular.text = news[indexPath.row].Titular
                cell.Tiempo.text = news[indexPath.row].Tiempo
                cell.ImageCell.image = news[indexPath.row].Imagen
                cell.news = news[indexPath.row]
                cell.delegate = self
              return cell
           
    }

}
extension ListExerciseViewController: SecondCustomTableViewCellDelegate{
    func SecondCustomTableViewCell(_ viewController: SecondCustomTableViewCell, _ news: NewsFile)
        {
            selectedNews = news
            secondScene()
    }
    
    
}

