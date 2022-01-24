//
//  HelloViewController.swift
//  HelloWorld
//
//  Created by Sarakam,Bhuvan Chandra on 1/20/22.
//


import UIKit

class SayHelloViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    @IBOutlet weak var messageLBL: UILabel!
    @IBOutlet weak var fullNameTF: UITextField!
    
    @IBAction func sayHello(_ sender: UIButton){

        if let name=self.fullNameTF.text, !name.isEmpty{
            self.messageLBL.text="Hello, \(name)"
        }
        
        if let name=self.fullNameTF.text{
            
            if !name.isEmpty{
                self.messageLBL.text="Hello, \(name)"
            }
        }
        
//        assert(!self.fullNameTF.text!
//                .isEmpty,
//               "SayHelloViewController.sayHello.Missing.user input")
//        self.messageLBL.text = "Hello,
//            \(self.fullNameTF.text!)"
    }

}
