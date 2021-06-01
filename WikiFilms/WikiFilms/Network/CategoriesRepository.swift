//
//  CategoriesRepository.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import Foundation


struct CategoriesRepository {
    
    func getCategoriesList(completion: @escaping ((CategoryListResponse?) -> Void)) {
        let categoriesUrl = APIManager.shared.buildUrl(path: ApiEndpoint.categories, queryParams: nil)
        if let url = categoriesUrl?.url {
            NetworkManager.shared.fetchData(url) { data in
                completion(try? JSONDecoder().decode(CategoryListResponse.self, from: data))
            }
        }
    }
}
