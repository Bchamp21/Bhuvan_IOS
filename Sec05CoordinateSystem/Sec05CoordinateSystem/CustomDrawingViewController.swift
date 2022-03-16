//
//  CustomDrawingViewController.swift
//  Sec05CoordinateSystem
//
//  Created by Sarakam,Bhuvan Chandra on 3/15/22.
//

import UIKit

class CustomDrawingViewController: UIViewController {

    override func draw() {
//        super.viewDidLoad()

        let path = UIBezierPath()
        
        path.move(to:<#T##CGPoint#>(X:CGFloat(self.bounds.midX-MyNeeds.pointDiff),Y:CGFloat(self.bounds.midY-MyNeeds.pointDiff)))
        path.move(to:<#T##CGPoint#>(X:CGFloat(self.bounds.midX-MyNeeds.pointDiff),Y:CGFloat(self.bounds.midY)))
 
    }
    

    struct MyNeeds{
        static let pointDiff: CGFloat = CGFloat(100.0)
        static let lineWidth: Double = 10.0
    }

}
