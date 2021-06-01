//
//  MoviesRepository.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import Foundation

struct MoviesRepository {
    
    func getMoviesList(page: Int = 1, categoryId: Int? = nil, completion: @escaping ((MovieListResponse?) -> Void)) {
        var params: [URLQueryItem] = []
        params.append(URLQueryItem(name: "page", value: "\(page)"))
        if let category = categoryId {
            params.append(URLQueryItem(name: "with_genres", value: "\(category)"))
        }
        
        let moviesUrl = APIManager.shared.buildUrl(path: ApiEndpoint.list, queryParams: params)
        if let url = moviesUrl?.url {
            NetworkManager.shared.fetchData(url) { data in
                completion(try? JSONDecoder().decode(MovieListResponse.self, from: data))
            }
        }
    }
    
    func getMovieDetails(id: Int, completion: @escaping ((MovieDetailsResponse?) -> Void)) {
        var detailsUrl = APIManager.shared.buildUrl(path: ApiEndpoint.details, queryParams: [
            URLQueryItem(name: "append_to_response", value: "videos")
        ])
        detailsUrl?.path += String(id)
        if let url = detailsUrl?.url {
            NetworkManager.shared.fetchData(url) { data in
                completion(try? JSONDecoder().decode(MovieDetailsResponse.self, from: data))
            }
        }
    }
}
