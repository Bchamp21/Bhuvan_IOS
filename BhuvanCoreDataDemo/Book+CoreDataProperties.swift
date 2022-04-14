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

    @NSManaged public var bookID: Int16
    @NSManaged public var title: String?
    @NSManaged public var pages: Int16
    @NSManaged public var borrower: Student?

}

extension Book : Identifiable {

}
