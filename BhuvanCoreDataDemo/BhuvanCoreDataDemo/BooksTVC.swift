//
//  BooksTVC.swift
//  BhuvanCoreDataDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/19/22.
//

import UIKit

class BooksTVC: UITableViewController {

    var books: [Book] = [Book]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        
        let book = self.books[indexPath.row]
        
        var config = cell.defaultContentConfiguration()
        
        config.text = book.title!
        
        config.secondaryText = "ID: \(book.bookID!) -- Pages: \(book.pages)"
        
        config.image = UIImage(systemName: "person")
        
        cell.contentConfiguration = config
        
        return cell
    }
}
