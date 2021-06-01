//
//  MovieVideosResponse.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import Foundation

struct MovieVideosResponse: Decodable {
    let results: [MovieVideo]?
}

struct MovieVideo: Decodable {
    let key: String?
    let site: String?
    let type: String?
    
    func transformToStringUrl() -> String? {
        guard let key = key else {
            return nil
        }
        if self.site == "YouTube" {
            return "https://www.youtube.com/watch?v=\(key)"
        }
        return nil
    }
}

extension Array where Element == MovieVideo {
    func toUrlList() -> [String] {
        return self.compactMap { (movieVideo: MovieVideo) -> String? in
            movieVideo.transformToStringUrl()
        }
    }
}

