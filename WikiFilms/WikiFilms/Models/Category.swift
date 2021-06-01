//
//  Category.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import Foundation

struct Category {
    let id: Int
    let name: String
    
    init?(from genre: Genre) {
        guard let id = genre.id, let name = genre.name else {
            return nil
        }
        self.id = id
        self.name = name
    }
}

