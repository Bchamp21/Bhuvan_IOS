//
//  ViewController.swift
//  SarakamNewAPIDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/5/22.
//

import UIKit

class SportsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.sportsArticlesTableView.delegate = self
        self.sportsArticlesTableView.dataSource = self
    }

    @IBOutlet var sportsArticlesTableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
       1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        self.articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let segueName = segue.identifier{
            
            switch segueName{
            
            case "detailSegue":
                
                if let dsVC = segue.destination as? DetailArticleVC{
                    
//                    osVC.pizzaName = "Pepparoni Pizza"
//
//                    osVC.pizzaCost = 5.25
                    
                    
                    dsVC.navigationItem.title = "Order Confirmed"
                    
                }
                
            default :
                break
            }
        }
    }
}

