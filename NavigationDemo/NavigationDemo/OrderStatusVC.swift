//
//  OsVC.swift
//  NavigationDemo
//
//  Created by Sarakam,Bhuvan Chandra on 3/24/22.
//

import UIKit

class OrderStatusVC: UIViewController {
    
    var pizzaName: String = "Thin Crust Parmesan garlic Chicken Pizza"
    var pizzaCost: Double = 8.45
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
        
        orderTotal.text = "Ordered " + pizzaName + " cost " + String(pizzaCost)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet var orderTotal: UITextView!
    
}
