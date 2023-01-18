//
//  NewsData.swift
//  H4X0R News
//
//  Created by Jeevan Chandra Joshi on 18/01/23.
//

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }

    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
