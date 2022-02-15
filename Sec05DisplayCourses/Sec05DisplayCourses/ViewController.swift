//
//  ViewController.swift
//  Sec05DisplayCourses
//
//  Created by Sarakam,Bhuvan Chandra on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //model
    var courses: Dictionary<String, Dictionary<String, String>> = [
        "cybersec" :["title":"Cybersecurity","crn":"44652","termOffered":"Fall","desc":"This is a cyber security course.","image":"cybersec"],
        "java" :["title":"Object Oriented Prog in Java","crn":"44542","termOffered":"Fall/Spring","desc":"This is a java course.","image":"java"],
        "ios" :["title":"Mobile Computing-iOS","crn":"44653","termOffered":"Fall/Spring","desc":"This is an iOS app dev course.","image":"ios"]
    ]

    @IBOutlet var courseIconIMG: UIImageView!
    @IBOutlet var courseTitleLBL: UILabel!
    
    @IBOutlet var courseCRNLBL: UILabel!
    
    @IBOutlet var termOfferedLBL: UILabel!
    
    
    @IBOutlet var courseDescLBL: UILabel!
    
    @IBAction func previous(_ sender: Any) {
    }
    
    @IBAction func next(_ sender: Any) {
    }
    
    
    
}

