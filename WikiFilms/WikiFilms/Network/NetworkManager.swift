//
//  NetworkManager.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import Foundation
import UIKit

struct NetworkManager {
    
    static var shared = NetworkManager()
    let session = URLSession.shared
    
    func fetchData(_ url: URL, completion: @escaping (Data) -> Void) -> Void {
        self.session.dataTask(with: url, completionHandler: { (data, response, error) in
            guard error == nil else {
                return
            }
            if let data = data {
                completion(data)
            }
        }).resume()
    }
}
