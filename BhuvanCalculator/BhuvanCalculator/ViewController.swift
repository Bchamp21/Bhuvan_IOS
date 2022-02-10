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
//        self.resultLBL.text! += "8"
        if let buttonTitle = sender.titleLabel?.text{
//            self.resultLBL.text = buttonTitle.text
            appenUserInput(text:buttonTitle, to: &self.resultLBL)
        }
        
        if operandOne == 0.0 {
            self.operandOne = 8
        }else{
            self.operandTwo = 8
        }
    }
    
    @IBAction func eleven(_ sender: UIButton) {
//        self.resultLBL.text! += "11"
        if let buttonTitle = sender.titleLabel?.text{
//            self.resultLBL.text = buttonTitle.text
            appenUserInput(text:buttonTitle, to: &self.resultLBL)
        }
        
        if operandTwo == 0.0 {
            self.operandTwo = 11
        }else{
            self.operandOne = 11
        }
        
    }
    
    @IBAction func add(_ sender: UIButton) {
        
        //Optional Binding
//        if let buttonTitle = sender.titleLabel{
//            self.resultLBL.text = buttonTitle.text
//        }else{
//            self.resultLBL.text = "Garbage"
//        }
        
        if let buttonTitle = sender.titleLabel?.text{
//            self.resultLBL.text = buttonTitle.text
            appenUserInput(text:buttonTitle, to: &self.resultLBL)
        }
//        self.resultLBL.text! += (sender.titleLabel?.text)!
        
//        self.resultLBL.text! += sender.titleLabel?.text ?? "Garbage"
        
//        if let _ = self.resultLBL.text{
//            if let buttonTitle = sender.titleLabel?.text{
//                self.resultLBL.text = buttonTitle
//            }
//        }
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
    
    
    @IBAction func squareRoot(_ sender: UIButton){
        
        if let value = self.resultLBL.text{
            if let doubleVal = Double(value){
                self.resultLBL.text = String(format: "%.2f", arguments: [doubleVal.squareRoot()])
            }
        }
    }
    
//    let stringExp = "3+5/2*6"
//
//    let expression = NSExpression(format: stringExp)
//
//    let result = expression.expressionValue(with: nil, context: nil) as! Double
//    print(result)
    
    
    func appenUserInput(text: String, to label: inout UILabel!){
        if let currentValue = label.text{
            label =  currentValue + text
        }
    }

}

