//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Sarakam,Bhuvan Chandra on 3/24/22.
//

import UIKit
import AVFoundation

class MenuVC: UIViewController {

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
     */
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let segueName = segue.identifier{
            
            switch segueName{
            
            case "orderTotal":
                
                if let osVC = segue.destination as? OrderStatusVC{
                    
                    osVC.pizzaName = "Pepparoni Pizza"
                    
                    osVC.pizzaCost = 5.25
                    
                    
                    osVC.navigationItem.title = "Order Confirmed"
                    
                }
                
            default :
                break
            }
        }
    }
    
    
    
    @IBOutlet var extraLarge: UILabel!
    
    @IBOutlet var large: UILabel!
    
    @IBOutlet var medium: UILabel!
    
    @IBOutlet var small: UILabel!
    
    
    @objc func labelTapped(_ sender: UITapGestureRecognizer) {
            print("labelTapped")
        }
    
    func setupLabelTap() {
           
           let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
           self.extraLarge.isUserInteractionEnabled = true
           self.extraLarge.addGestureRecognizer(labelTap)
           AudioServicesPlaySystemSound(soundID)
           
       }
    
    

}
