//
//  CategoryListResponse.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import Foundation

struct CategoryListResponse: Decodable {
    let genres: [Genre]?
    
    func transformToCategoryArray() -> [Category] {
        guard let genres = self.genres else {
            return []
        }
        return genres.compactMap { genre -> Category? in
            Category(from: genre)
        }
    }
}

struct Genre: Decodable {
    let id: Int?
    let name: String?
}

