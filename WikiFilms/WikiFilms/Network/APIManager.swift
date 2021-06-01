//
//  APIManager.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import Foundation

struct APIManager {
    static var shared = APIManager()
    
    let baseUrl = "https://api.themoviedb.org/3"
    let apiKey = "eb37167bfd6e6ce5bdd51ff7ad360c75"
    let imageBaseUrl = "https://image.tmdb.org/t/p/"
    
    func buildUrl(path: ApiEndpoint, queryParams: [URLQueryItem]? = nil) -> URLComponents? {
        var url = URLComponents(string: "\(self.baseUrl)\(path.rawValue)")
        url?.queryItems = [
            URLQueryItem(name: "api_key", value: self.apiKey),
            URLQueryItem(name: "language", value: "fr-FR")
        ]
        if let params = queryParams {
            url?.queryItems! += params
        }
        return url
    }
}

enum ApiEndpoint: String {
    case list = "/discover/movie"
    case details = "/movie/"
    case categories = "/genre/movie/list"
}

