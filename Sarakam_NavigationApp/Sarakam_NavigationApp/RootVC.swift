//
//  RootVC.swift
//  Sarakam_NavigationApp
//
//  Created by Sarakam,Bhuvan Chandra on 4/4/22.
//

import UIKit

class RootVC: UIViewController {


    @IBOutlet var usernameTF: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginBtn: UIButton!
    
    @IBAction func usernameAction(_ sender: UITextField) { if(self.usernameTF.text == "admin"){
        self.passwordTF.isEnabled = true
        }
    }
    
    
    @IBAction func passwordAction(_ sender: Any) {
        if usernameTF.text == "admin" {
            self.passwordTF.isEnabled = true
        }
        
        if passwordTF.text == "password"{
            self.loginBtn.isEnabled = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.passwordTF.isEnabled = false
        self.loginBtn.isEnabled = false
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func login(_ sender: UIButton) {
        if passwordTF.text == "password"{
            self.loginBtn.isEnabled = true
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let segueName = segue.identifier{
            switch segueName{
            case "login":
                if ((segue.destination as? GalleryVC) != nil){}
            default :
                break
            }
        }
    }
    

}
