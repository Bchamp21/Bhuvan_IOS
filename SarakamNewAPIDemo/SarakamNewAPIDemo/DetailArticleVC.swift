//
//  DetailArticleVC.swift
//  SarakamNewAPIDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/5/22.
//

import UIKit

class DetailArticleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.titleLBL.text = self.titleText
        
        self.contentTextView.text = self.content
        
        self.thunmnailIV.sd_setImage(with: URL(string:self.imageUrl),placeholderImage: UIImage())
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var titleLBL: UILabel!
    
    @IBOutlet weak var thunmnailIV: UIImageView!
    @IBOutlet weak var contentTextView: UITextView!
    
    var titleText = ""
    
    var imageUrl = ""
    
    var content = ""
    
    
}
