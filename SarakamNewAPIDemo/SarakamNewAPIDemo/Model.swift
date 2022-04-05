//
//  Model.swift
//  SarakamNewAPIDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/5/22.
//

import Foundation
import CoreImage

struct Article: Codable{
    var title: String?
    var author: String?
    var description: String?
    var urlToImage: String?
    var content: String?
    
}

struct Articles: Codable{
    var articles: [Article]
}


struct AppConstants{
    let url = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=API_KEY"
}
