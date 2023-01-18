//
//  DetailView.swift
//  H4X0R News
//
//  Created by Jeevan Chandra Joshi on 18/01/23.
//

import SwiftUI

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}
