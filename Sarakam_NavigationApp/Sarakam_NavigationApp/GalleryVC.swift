//
//  GalleryVC.swift
//  Sarakam_NavigationApp
//
//  Created by Sarakam,Bhuvan Chandra on 4/5/22.
//

import UIKit
import AVFoundation

class GalleryVC: UIViewController {
    
    let soundID: SystemSoundID = 1010
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        
        AudioServicesPlaySystemSound(soundID)
        
        self.setupLabelTap()
 
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet var iv1: UIImageView!
    
    @IBOutlet var iv2: UIImageView!
    
    @IBOutlet var iv3: UIImageView!
    
    
    @IBOutlet var iv4: UIImageView!

    
    @IBOutlet var iv5: UIImageView!
    
    @IBOutlet var iv6: UIImageView!
    
    
    @IBOutlet var iv7: UIImageView!
    
    
    @IBOutlet var iv8: UIImageView!
    
    
    
    //Model
    var images: String = ["a","b","c"]
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let segueName = segue.identifier{
            
            switch segueName{
            
            case "orderTotal":
                
                if let idVC = segue.destination as? ImageDescVC{
                    
//                    idVC.pizzaName = "Pepparoni Pizza"
//
//                    idVC.pizzaCost = 5.25
                    
                    
                    idVC.navigationItem.title = "Order Confirmed"
                    
                }
                
            default :
                break
            }
        }
    }
    
    @objc func labelTapped(_ sender: UITapGestureRecognizer) {
            print("labelTapped")
        }
    
    func setupLabelTap() {
           
           let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
           self.iv1.isUserInteractionEnabled = true
           self.iv1.addGestureRecognizer(labelTap)
           AudioServicesPlaySystemSound(soundID)
           
       }

}
