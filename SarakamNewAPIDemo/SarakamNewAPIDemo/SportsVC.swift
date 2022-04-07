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
        
        loadJson(from: AppConstants.url)
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
        
        let article = self.articles[indexPath.row]
        
        if let articleCell = cell as? ArticleCellTVC{
            
            if let title = article.title{
                articleCell.titleLBL.text = title
            }
            
            if let description = article.description{
                articleCell.descriptionLBL.text = description
            }
            
            if let author = article.author{
                articleCell.authorLBL.text = "Author: \(author)"
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegue", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let segueName = segue.identifier{
            
            switch segueName{
            
            case "detailSegue":
                
                if let descVC = segue.destination as? DetailArticleVC{
                    
//                    osVC.pizzaName = "Pepparoni Pizza"
//                    osVC.pizzaCost = 5.25
//                    dsVC.navigationItem.title = "Order Confirmed"
                    if let ip = sender as? IndexPath{
                        let article = self.articles[ip.row]
                        
                        if let title = article.title{
                            descVC.titleText = title
                        }
                        if let content = article.content{
                            descVC.content = content
                        }
                        if let imageUrl = article.urlToImage{
                            descVC.imageUrl = imageUrl
                        }
                    }
                    
                    
                }
                
            default :
                break
            }
        }
    }
    
    private func loadJson(from url: String){
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler:  { data, response, error in
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let jsonResponse = try JSONDecoder().decode(Articles.self, from: data)
                
                DispatchQueue.main.async {
                    self.articles = jsonResponse.articles
                    self.sportsArticlesTableView.reloadData()
                }
                
            }catch{
                print(error)
            }
        })
                                              
         task.resume()
}
                                              
   private func loadImage(for imageView: UIImageView, from url: String){
            let task = URLSession.shared.dataTask(with: URL(string: url)!){
                data, response, error in
                
                guard case let data = data, error == nil else{
                    return
                }
                
                DispatchQueue.main.async {
                    imageView.self =
                }
            }
}

}
