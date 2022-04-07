//
//  GalleryVC.swift
//  Sarakam_NavigationApp
//
//  Created by Sarakam,Bhuvan Chandra on 4/5/22.
//

import UIKit
import AVFoundation

class GalleryVC: UIViewController {
    
    let soundID: SystemSoundID = 1010
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        
        AudioServicesPlaySystemSound(soundID)
        
//        self.setupLabelTap()
        self.imageTap()
 
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBOutlet weak var a: UIImageView!
    
    @IBOutlet weak var b: UIImageView!
    
    @IBOutlet weak var c: UIImageView!
    
    @IBOutlet weak var d: UIImageView!
    
    @IBOutlet weak var e: UIImageView!
    
    @IBOutlet weak var f: UIImageView!
    
    @IBOutlet weak var g: UIImageView!
    
    
    @IBOutlet weak var h: UIImageView!
    
    
    
    
    
    
    
    //Model - Images Data
    var images = ["a", "b", "c", "d", "e", "f", "g", "h"]
    
    var desc = ["House in a Tree",
                "Panda and Sugarcane",
                "Rat and Carrot",
                "Solitude",
                "Squirrel",
                "Heads or Tails",
                "Jennifer Lawrence",
                "Angry Cat"]
    
    var itag = 0
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let segueName = segue.identifier{
            switch segueName {
            case "imageDeets":
                
                if let dest = segue.destination as? ImageDescVC {
                    dest.descp = desc[itag]
                    dest.imageNum = images[itag]
                  
                   
                }
        
            default :
                break

            }
        }
    }
    
    
    
    @objc func labelTapped(_ sender: UITapGestureRecognizer) {
            print("labelTapped")
        }
    
    func imageTap(){
        
        let imageTap = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
//        print(a.tag)
//        print(b.tag)
        self.a.isUserInteractionEnabled = true
        self.a.addGestureRecognizer(imageTap)
        self.b.isUserInteractionEnabled = true
        self.b.addGestureRecognizer(imageTap)
        self.c.isUserInteractionEnabled = true
        self.c.addGestureRecognizer(imageTap)
        self.d.isUserInteractionEnabled = true
        self.d.addGestureRecognizer(imageTap)
        self.e.isUserInteractionEnabled = true
        self.e.addGestureRecognizer(imageTap)
        self.f.isUserInteractionEnabled = true
        self.f.addGestureRecognizer(imageTap)
        self.g.isUserInteractionEnabled = true
        self.g.addGestureRecognizer(imageTap)
        self.h.isUserInteractionEnabled = true
        self.h.addGestureRecognizer(imageTap)
        
        
        
    }

    
//    func setupLabelTap() {
//
//           let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
//           self.a.isUserInteractionEnabled = true
//           self.a.addGestureRecognizer(labelTap)
//           AudioServicesPlaySystemSound(soundID)
//
//       }
    
    @IBAction func iv1Tap(_ sender: Any) {
        self.itag = a.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    
    @IBAction func iv2Tap(_ sender: Any) {
        self.itag = b.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    
    @IBAction func iv3Tap(_ sender: Any) {
        self.itag = c.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    
    @IBAction func iv4Tap(_ sender: Any) {
        self.itag = d.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    
    @IBAction func iv5Tap(_ sender: Any) {
        self.itag = e.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    @IBAction func iv6Tap(_ sender: Any) {
        self.itag = f.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    @IBAction func iv7Tap(_ sender: Any) {
        self.itag = g.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    @IBAction func iv8Tap(_ sender: Any) {
        self.itag = h.tag
        self.performSegue(withIdentifier: "imageDeets",  sender: self)
    }
    
    
    
    
    
    
}
