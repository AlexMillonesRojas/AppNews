//
//  ListExerciseViewController.swift
//  AppNews
//
//  Created by Edgar Alexander on 16/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import RealmSwift
struct Noticia:Codable{
    var Antetitular = ""
    var Imagen = ""
    var Tiempo = ""
    var Fecha = ""
    var Titular = ""
    var Subtitulo = ""
    var Texto = ""

}
struct Noticias:Codable{
    var news = [Noticia]()
}

struct MyResult: Codable {
    var id = ""
    var name = ""
    var type = ""
    var path = ""
    var mode = ""
}
class ListExerciseViewController: UIViewController {
    var exercisesList = ["Deportes", "Tecnología", "Educación", "España"]
    var typeStr = "Tecnología"
    var news = [NewsFile]()
    var selectedNews = NewsFile()
    let myUrl = URL(string:"https://gitlab.com/api/v4/projects/19765982/repository/tree")!
    func deleteRealmAll() {
        let realm = try! Realm()
        try! realm.write {
            let allNotifications = realm.objects(News.self)
            realm.delete(allNotifications)
        }
    }
    func noticia(){
        let url = Bundle.main.url(forResource: "News", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        //print(data)
        let decoder = JSONDecoder()  
        let obj2 = try! decoder.decode(Noticias.self, from: data)
        //print(obj2.news[0].Antetitular)
        let json = try? JSON(data: data)
        let news = json?["news"][4]["Antetitular"].string
      print(news!)
    }
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        let vc = segue.destination as? FullNewsViewController
            vc?.news = selectedNews
    }
    func  secondScene() {
        performSegue(withIdentifier: "CompleteNews", sender: self)
    }
    func downloadGet(){
            AF.request("https://gitlab.com/api/v4/projects/19765982/repository/tree")
            .responseJSON { (response) in
                let resposeJSON = JSON(response.data!)
                let new = resposeJSON[1]["type"].string
                print(new!)
                }
    }
    func incrementID() -> Int {
        let realm = try! Realm()
        return (realm.objects(News.self).max(ofProperty: "id") as Int? ?? 0) + 1
    }
    /*func increID() -> Int {
        let realm = try! Realm()
        
    }*/
    func makeRealm() {
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL)
        var notic = News()
        notic.id = incrementID()
        notic.Antetilular = "Futbol"
        notic.Fecha = "12/07/2020"
        notic.Subtitulo = "El viernes partidazo de champions;Bayern vs Barcelona"
        notic.Tiempo = "21:00"
        try! realm.write {
            realm.add(notic)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        incrementID()
        makeRealm()
        //downloadGet()
        //noticia()
        //deleteRealmAll()
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



