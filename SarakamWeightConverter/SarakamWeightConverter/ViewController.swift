//
//  ViewController.swift
//  SarakamWeightConverter
//
//  Created by Sarakam,Bhuvan Chandra on 3/15/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var convertval = 0.45359237 ;
    @IBOutlet var LbTF: UITextField!
    
    
    @IBOutlet var KgLBL: UILabel!
    
    
    @IBOutlet var KgTF: UITextField!
    
    
    @IBOutlet var LbLBL: UILabel!
    
    
    @IBAction func LbstoKgs(_ sender: UIButton) {
        self.KgLBL.text = String(round((Double(self.LbTF.text!)! * convertval)*100.0)/100.0);
    }
    
    @IBAction func KgstoLbs(_ sender: UIButton) {
        self.LbLBL.text = String(round((Double(self.KgTF.text!)! / convertval)*100.0)/100.0);
    }
    
    
}

