import SwiftUI

struct AllBooksView: View {

    // MARK: - Mock Data
    var books: [Book] = Book.mockdata

    // MARK: - Grid
    private let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    // MARK: - Body
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 24) {
                ForEach(books) { book in
                    BookCardView(book: book, isFlexible: true)
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 16)
        }
        .navigationTitle("All Books")
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    NavigationStack {
        AllBooksView()
    }
}
