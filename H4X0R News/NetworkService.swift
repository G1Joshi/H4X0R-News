//
//  NetworkService.swift
//  H4X0R News
//
//  Created by Jeevan Chandra Joshi on 18/01/23.
//

import Foundation

class NetworkService: ObservableObject {
    @Published var news = [Post]()

    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, _, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let result = data {
                        do {
                            let results = try decoder.decode(Results.self, from: result)
                            DispatchQueue.main.async {
                                self.news = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
