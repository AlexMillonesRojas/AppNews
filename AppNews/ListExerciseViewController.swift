//
//  ListExerciseViewController.swift
//  AppNews
//
//  Created by Edgar Alexander on 16/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

class ListExerciseViewController: UIViewController {
    let exercisesList = ["Deportes", "Tecnología", "Educación", "España"]
    var typeStr = "Tecnología"
    override func viewDidLoad() {
        super.viewDidLoad()
        noticia()
    }
    func noticia(){
        let url = Bundle.main.url(forResource: "News", withExtension: "json")
        print(url)
       let data = NSData(contentsOf: url!)
    do{
       let object = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments)
            print("Enter json")
             print(data)
             print(object)
        if let dictionary = object as? [String: AnyObject] {
            print(dictionary)
        }
    }
            catch{
                print(data)
                print("error")
            }
    }
    }
extension ListExerciseViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let cell =
                tableView.dequeueReusableCell(withIdentifier: "SecondCustomCell", for: indexPath) as! SecondCustomTableViewCell
        
              cell.Antetitular.text = exercisesList[indexPath.row]
        
             // cell.Titular.text = [indexPath.row]
        
              cell.ImageCell.image = UIImage(named: exercisesList[indexPath.row])
        
              return cell
           
    }

}
