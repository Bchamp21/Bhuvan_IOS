//
//  Student+CoreDataProperties.swift
//  BhuvanCoreDataDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/14/22.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var studentID: String?
    @NSManaged public var fullName: String?
    @NSManaged public var gpa: Double
    @NSManaged public var books: Set<Book>?

}

// MARK: Generated accessors for books
extension Student {

    @objc(addBooksObject:)
    @NSManaged public func addToBooks(_ value: Book)

    @objc(removeBooksObject:)
    @NSManaged public func removeFromBooks(_ value: Book)

    @objc(addBooks:)
    @NSManaged public func addToBooks(_ values: Set<Book>?)

    @objc(removeBooks:)
    @NSManaged public func removeFromBooks(_ values: Set<Book>?)

}


extension Student {
    class func createOrFind(stu: StudentModel, in context: NSManagedObjectContext) -> Student{
        
        let request : NSFetchRequest<Student> = Student.fetchRequest()
        
        request.predicate = NSPredicate(format: "any stuID == %@", stu.stuId)
        
        do{
            let records = try AppDelegate.context.fetch(request)
            
            if records.count != 0{
                return records[0]
            }
            catch {
                print(error)
            }
            
            var student = Student(context: AppDelegate.context)
            
            student.studID = stu.stuId
            student.fullName = stu.fullName
            student.gpa = stu.gpa
            
            return student
        }
    }
}
extension Student : Identifiable {

}
