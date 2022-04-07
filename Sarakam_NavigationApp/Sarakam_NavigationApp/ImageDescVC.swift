//
//  ImageDescVC.swift
//  Sarakam_NavigationApp
//
//  Created by Sarakam,Bhuvan Chandra on 4/5/22.
//

import UIKit

class ImageDescVC: UIViewController {

    var descp: String = ""
    var imageNum: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.imageDesc.image = UIImage(named: imageNum)
        self.lblDesc.text = descp
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet var imageDesc: UIImageView!
    
    @IBOutlet var lblDesc: UILabel!
    
    
}
