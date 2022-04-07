//
//  Model.swift
//  SarakamNewAPIDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/5/22.
//

import Foundation
//import CoreImage

struct Article: Codable{ // everything inside is codable hence Article is Codable
    var title: String? // String by default implementing Codable
    var author: String?
    var description: String?
    var urlToImage: String?
    var content: String?
    
}

struct Articles: Codable{
    var articles: [Article]
}


struct AppConstants{
    let url = "https://newsapi.org/v2/everything?q=tesla&from=2022-03-07&sortBy=publishedAt&apiKey=73b4227f11a246d2b2672218d835d93d"
}
