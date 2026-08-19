import SwiftUI
import Combine

enum Root: Hashable {
    case vendors
    case books
    case authors
    case authorsDetail(Author)
    case bookDetail(Book)
}

// MARK: - Identifiable
extension Root: Identifiable {

    var id: String {
        switch self {

        case .vendors:
            return "vendors"

        case .books:
            return "books"

        case .authors:
            return "authors"

        case .authorsDetail(let author):
            return "authorsDetail-\(author.id)"

        case .bookDetail(let book):
            return "bookDetail-\(book.id)"
        }
    }
}

// MARK: - Navigation View Model
final class NavigationViewModel: ObservableObject {

    @Published var presentedSheet: Root?

    func presentSheet(_ root: Root) {
        presentedSheet = root
    }

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
