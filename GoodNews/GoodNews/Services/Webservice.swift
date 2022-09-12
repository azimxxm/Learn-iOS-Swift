//
//  Webservice.swift
//  GoodNews
//
//  Created by Azimjon on 07/09/22.
//

import Foundation

class Webservice {
    func getArticles(url:URL, completion:@escaping ([Any]?) -> ()){
        URLSession.shared.dataTask(with: url) {
            data, response, error in if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                print(data)
            }
        }.resume()
    }
}
