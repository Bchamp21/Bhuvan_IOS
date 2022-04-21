//
//  ViewController.swift
//  BhuvanCoreDataDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/14/22.
//

import UIKit
import CoreData

class StudentsVC: UIViewController {

    var studentRecords = [Student]()
    
    @IBOutlet weak var studentsTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.studentsTV.delegate = self
        self.studentsTV.dataSource = self
        self.fetchStudentRecords()
        
    }
    
    private func fetchStudentRecords(){
        let request: NSFetchRequest<Student> = Student.fetchRequest()
        
        request.sortDescriptors = [NSSortDescriptor(key: "stuID", ascending: true)]
        
        self.fetchResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: AppDelegate.context, sectionNameKeyPath: nil, cacheName: nil)
        
        do{
            try self.fetchResultsController?.performFetch()
            
            self.studentsTV.reloadData()
            
//            self.studentRecords  = try AppDelegate.context.fetch(request)
        }catch{
            print(error)
        }
    }

    @IBAction func addStudent(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "addStudentRecordSegue", sender: self)
    }
    
}

extension StudentsVC: UITableViewDelegate{
    
}

extension StudentsVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        self.studentRecords.count
        self.fetchResultsController?.sections![section].numberOfObjects ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for : indexPath)
        
//        let student = self.studentRecords[indexPath.row]
        
        let student = self.fetchResultsController?.object(at: indexPath){
        var config = cell.defaultContentConfiguration()
        
        config.text = student.fullName
        
        config.secondaryText = "ID: \(student.studentID!) -- GPA: \(student.gpa)"
        
        config.image = UIImage(systemName: "person")
        
        cell.contentConfiguration = config
        
        return cell
        }
    }
}
