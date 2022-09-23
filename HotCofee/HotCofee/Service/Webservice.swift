//
//  Webservice.swift
//  HotCofee
//
//  Created by Azimjon on 15/09/22.
//

import Foundation


enum NetwrkError: Error {
    case decodingError
    case domainError
    case urlError
}

struct Resource<T: Codable> {
    let url: URL
}


class Webservice {
    func load<T>(resouce: Resource<T>, completion: @escaping (Result<T, NetwrkError>)-> Void) {
        
        URLSession.shared.dataTask(with: resouce.url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(.failure(.domainError))
                return
            }
            
            let result = try? JSONDecoder().decode(T.self, from: data)
            if let result = result  {
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            } else {
                completion(.failure(.decodingError))
            }
            
        }.resume()
        
    }
}
