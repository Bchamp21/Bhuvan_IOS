//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Sarakam,Bhuvan Chandra on 3/22/22.
//

import UIKit

class RootVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.usernameTF.isEnabled = true
        self.passwordTF.isEnabled = true
        
    }

    @IBOutlet var usernameTF: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let segueName = segue.identifier{
            
            switch segueName{
            
            case "menu":
                
                if segue.destination is MenuVC{
                    
//                    menuVC.extraLarge.isEnabled = true
//                    menuVC.large.isEnabled = true
//                    menuVC.medium.isEnabled = true
//                    menuVC.small.isEnabled = true
                    
                }
                
            default :
                break
            }
        }
    }
    
}

