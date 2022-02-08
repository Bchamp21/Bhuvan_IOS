//
//  ViewController.swift
//  Sarakam_FormatName
//
//  Created by Sarakam,Bhuvan Chandra on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var firstNameTextField: UITextField!
    
    
    @IBOutlet var lastNameTextField: UITextField!
    
    
    @IBOutlet var displayLabel: UILabel!
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        if let fname=self.firstNameTextField.text, let lname=self.lastNameTextField.text{
            self.displayLabel.text="\(lname),\(fname)"
        
//        print("\(String(describing: lastNameTextField)),\(firstNameTextField)")
    }
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        self.firstNameTextField.text = ""
        self.lastNameTextField.text = ""
        self.displayLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
    
    


}
