//
//  ViewController.swift
//  BhuvanCalculator
//
//  Created by Sarakam,Bhuvan Chandra on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.resultLBL.text = ""
    }


    @IBOutlet weak var resultLBL: UILabel!
    
    var operandOne = 0.0
    var operandTwo = 0.0
    var operation = ""
    
    @IBAction func eight(_ sender: UIButton) {
        self.resultLBL.text! += "8"
        if operandOne == 0.0 {
            self.operandOne = 8
        }else{
            self.operandTwo = 8
        }
    }
    
    @IBAction func eleven(_ sender: UIButton) {
        self.resultLBL.text! += "11"
        if operandTwo == 0.0 {
            self.operandTwo = 11
        }else{
            self.operandOne = 11
        }
        
    }
    
    @IBAction func add(_ sender: UIButton) {
        self.resultLBL.text! +=
        (sender.titleLabel?.text)!
        
        if let _ = self.resultLBL.text{
            if let buttonTitle = sender.titleLabel?.text{
                self.resultLBL.text = buttonTitle
            }
        }
        self.operation = "+"
    }
    
    @IBAction func equals(_ sender: UIButton) {
        if self.operation == "+"{
            self.resultLBL.text = "\(operandOne + operandTwo)"
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        self.operandOne = 0.0
        self.operandTwo = 0.0
        self.operation = "+"
        self.resultLBL.text=""
    }
}

