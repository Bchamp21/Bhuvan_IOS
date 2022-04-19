//
//  InsertStudentVC.swift
//  BhuvanCoreDataDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/19/22.
//

import UIKit

class InsertStudentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    var student = Student ?
    
    @IBOutlet weak var stuIdTF: UITextField!
    
    @IBOutlet weak var studFullNameTF: UITextField!
    @IBOutlet weak var stuGPATF: UITextField!
    
    @IBOutlet weak var stuBtn: UIButton!
    
    @IBOutlet weak var bookIdTF: UITextField!
    
    @IBOutlet weak var bookTitleTF: UITextField!
    
    @IBOutlet weak var bookPagesTF: UITextField!
    
    @IBAction func addStudent(_ sender: UIButton) {
        if let id = self.stuIdTF.text, let name = self.studFullNameTF.text, let gpa = self.stuGPATF.text{
            if id != "" && name != "" && gpa != "" {
                let newStudent = StudentModel(stuId: id, fullName: name, gpa: Double(gpa)!)
                
                self.student = Student.createOrFind(stu: newStudent, in: AppDelegate.context)
            }
        }
    }
    
    @IBAction func submit(_ sender: UIButton) {
        if let id = self.bookIdTF.text, let title = self.bookTitleTF.text, let pages = self.bookPagesTF.text{
            if id != "" && title != "" && pages != "" {
                
                let aBook = TextBook(bookId: id, title: title, pages: pages)
                let newBook = Book.createOrFind(book: aBook, in: AppDelegate.context)
                if let stu = self.student{
                    stu.addToBooks(newBook)
                    
                    try? AppDelegate
                }
                
                
                
            }
        }
    }
    
    
    
    
    
    
}
