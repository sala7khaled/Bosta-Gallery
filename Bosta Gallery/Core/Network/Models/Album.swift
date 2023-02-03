//
//  Item.swift
//  Bosta Gallery
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding, Codable {

    let id: String
    let rank: String
    let title: String
    let fullTitle: String
    let year: String
    let image: String
    let crew: String
    let rating: String
    let count: String

    func encode(with coder: NSCoder) {
        coder.encode(id, forKey: "id")
        coder.encode(rank, forKey: "rank")
        coder.encode(title, forKey: "title")
        coder.encode(fullTitle, forKey: "fullTitle")
        coder.encode(year, forKey: "year")
        coder.encode(image, forKey: "image")
        coder.encode(crew, forKey: "crew")
        coder.encode(rating, forKey: "rating")
        coder.encode(count, forKey: "count")
    }

    required init?(coder: NSCoder) {
        self.id = coder.decodeObject(forKey: "movies") as? String ?? ""
        self.rank = coder.decodeObject(forKey: "rank") as? String ?? ""
        self.title = coder.decodeObject(forKey: "title") as? String ?? ""
        self.fullTitle = coder.decodeObject(forKey: "fullTitle") as? String ?? ""
        self.year = coder.decodeObject(forKey: "year") as? String ?? ""
        self.image = coder.decodeObject(forKey: "image") as? String ?? ""
        self.crew = coder.decodeObject(forKey: "crew") as? String ?? ""
        self.rating = coder.decodeObject(forKey: "rating") as? String ?? ""
        self.count = coder.decodeObject(forKey: "count") as? String ?? ""

    }
}

extension Item {

    enum CodingKeys: String, CodingKey {

        case id
        case rank
        case title
        case fullTitle
        case year
        case image
        case crew
        case rating = "imDbRating"
        case count = "imDbRatingCount"
    }
}
