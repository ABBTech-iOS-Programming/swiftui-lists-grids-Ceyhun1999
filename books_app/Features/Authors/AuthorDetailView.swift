//
//  AuthorDetailView.swift
//  books_app
//
//  Created by Ceyhun Rzayev on 19.08.26.
//

import SwiftUI

struct AuthorDetailView: View {
    let author: Author
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    let author = Author.mockData[0]
    AuthorDetailView(author: author)
}
