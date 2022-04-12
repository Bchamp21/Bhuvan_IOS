//
//  Model.swift
//  BhuvanCollectionViewDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/12/22.
//

import Foundation


struct Movie{
    var title: String
    var yearOfRelease: Int
    var rating: Double
    var revenue: String
    var urlToPoster: String
    var ytVId: String
    
    
    static func loadData() -> [Movie]{
        var movies = [Movie]()
        
        
        movies.append(Movie(title: "Tenet", rating: 7.4, yearOfRelease: 2020,urlToPoster, ytVId ))
        
        return movies
    }
}
