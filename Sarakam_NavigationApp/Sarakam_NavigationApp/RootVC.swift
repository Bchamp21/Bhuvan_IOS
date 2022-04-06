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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.passwordTF.isEnabled = false
        self.loginBtn.isEnabled = false
        
        // Do any additional setup after loading the view.
        self.usernameTF.isEnabled = true
        if(self.usernameTF.text == "admin"){
            self.passwordTF.isEnabled = true
        }
        if(self.passwordTF.text == "password"){
            self.loginBtn.isEnabled = true
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
