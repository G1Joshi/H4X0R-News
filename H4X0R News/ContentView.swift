//
//  ContentView.swift
//  H4X0R News
//
//  Created by Jeevan Chandra Joshi on 18/01/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkService = NetworkService()

    var body: some View {
        NavigationStack {
            List(networkService.news) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R News")
        }
        .onAppear {
            self.networkService.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
