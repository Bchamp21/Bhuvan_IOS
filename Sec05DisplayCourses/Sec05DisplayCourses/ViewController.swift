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
    
    lazy var courseIdx = Int(arc4random_uniform(UInt32(self.courses.count)))
    
    @IBOutlet weak var courseIconIMG: UIImageView!
    @IBOutlet weak var courseTitleLBL: UILabel!
  
    
    @IBOutlet weak var courseCRNLBL: UILabel!
    
    @IBOutlet var termOfferedLBL: UILabel!
    
    
    @IBOutlet var courseDescLBL: UILabel!
    
    @IBAction func previous(_ sender: UIButton) {
        if courseIdx > 0 {
            courseIdx -= 1
        
            displayCourse(at: courseIdx)
        }
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
//        self.courseTitleLBL.text = "Bhuvan"
        if courseIdx < self.courses.count-1 {
//                    courseDescLBL.text = "Bhuvan 01"
                    courseIdx += 1
                
                    displayCourse(at: courseIdx)
                }
            }

    }
    
    
    func displayCourse(at index: Int){
        
        let course = Array(self.courses.keys)[index]
        
        if let courseModel = self.courses[course]{
            
            if let imageName = courseModel["image"]{
                self.courseIconIMG.image = UIImage(named : imageName)
            }
            
            self.courseTitleLBL.text = courseModel["title"]
            
            self.courseCRNLBL.text = courseModel["crn"]
            
            self.courseDescLBL.text = courseModel["desc"]
            
            self.termOfferedLBL.text = courseModel["termOffered"]
        }
    }
    
    
}

