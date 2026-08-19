import Combine
import SwiftUI

enum Root: Hashable {
    case vendors
    case books
    case authors
    case authorsDetail(Author)
    case bookDetail(Book)
}

final class NavigationViewModel: ObservableObject {
    @ViewBuilder
    func destination(for root: Root) -> some View {
        switch root {

        case .vendors:
            VendorsView()

        case .books:
            AllBooksView()

        case .authors:
            AuthorsView()

        case .authorsDetail(let author):
            AuthorDetailView(author: author)

        case .bookDetail(let book):
            BookDetailView(book: book)
        }
    }

}
