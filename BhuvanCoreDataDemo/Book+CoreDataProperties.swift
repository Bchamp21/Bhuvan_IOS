//
//  Book+CoreDataProperties.swift
//  BhuvanCoreDataDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/14/22.
//
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }
//    --Fetch Request :
//    Request
//    SORT DESCRIPTIVES
//    PREDECTIVES
    @NSManaged public var bookID: Int16
    @NSManaged public var title: String?
    @NSManaged public var pages: Int16
    @NSManaged public var borrower: Student?

}

extension Book{
    class func createOrFind(stu: StudentModel, in context: NSManagedObjectContext) -> Student{
        
        let request : NSFetchRequest<Student> = Student.fetchRequest()
        
        request.predicate = NSPredicate(format: "any bookID == %@", Book.bookId)
        
        do{
            let records = try AppDelegate.context.fetch(request)
            
            if records.count != 0{
                return records[0]
            }
            catch {
                print(error)
            }
            
            var newBook = Book(context: AppDelegate.context)
            
            newBook.bookID = book.bookId
            newBook.title = book.title
            newBook.pages = book.pages
            
            return newBook
        }
    }
}
extension Book : Identifiable {

}
