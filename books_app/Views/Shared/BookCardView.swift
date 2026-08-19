import SDWebImageSwiftUI
import SwiftUI

struct BookCardView: View {

    let book: Book
    var isFlexible: Bool = false

    // MARK: - Book Image
    private var bookImage: some View {
        WebImage(url: URL(string: book.imageURL)) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            Color(uiColor: .systemGray5)
                .overlay {
                    ProgressView()
                        .tint(.secondary)
                }
        }
        .frame(minWidth: 130)
        .frame(height: 204)
        .clipped()
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }

    // MARK: - Book Info
    private var bookInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(book.title)
                .foregroundStyle(Color(.grayText))
                .font(.system(size: 14, weight: .medium))
                .lineLimit(1)

            Text(book.formattedPrice)
                .foregroundStyle(.burgundy)
                .font(.system(size: 12, weight: .bold))
        }
    }

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            bookImage
            bookInfo
        }
        .frame(width: isFlexible ? nil : 130)
        .frame(maxWidth: isFlexible ? .infinity : nil)
    }
}

extension Book {
    var formattedPrice: String {
        "$\(price.formatted(.number.precision(.fractionLength(2))))"
    }
}

#Preview {
    BookCardView(book: Book.mockdata[0])
}
