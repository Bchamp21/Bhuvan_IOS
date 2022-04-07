//
//  ArticleCellTVC.swift
//  SarakamNewAPIDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/7/22.
//

import UIKit

class ArticleCellTVC: UIViewController {

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
    @IBOutlet var ImageOutlet: UIImageView!
    
    @IBOutlet weak var titleLBL: UILabel!
    
    @IBOutlet weak var descriptionLBL: UILabel!
    
    @IBOutlet weak var authorLBL: UILabel!
    
    
    
    
}
