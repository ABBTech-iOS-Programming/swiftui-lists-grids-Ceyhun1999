import SwiftUI
import SDWebImageSwiftUI

struct AuthorDetailView: View {

    @EnvironmentObject private var navigationViewModel: NavigationViewModel

    let author: Author

    // MARK: - Grid
    private let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible())
    ]

    // MARK: - Author Info
    private var authorInfo: some View {

        VStack(spacing: 12) {
            WebImage(url: URL(string: author.imageURL)) { image in
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
            .frame(width: 140, height: 140)
            .clipShape(Circle())

            Text(author.role)
                .font(.system(size: 18, weight: .regular))
                .foregroundStyle(Color.grayText)

            Text(author.name)
                .font(.system(size: 22, weight: .bold))
                .foregroundStyle(Color.grayText)
        }
        .frame(maxWidth: .infinity)
    }

    // MARK: - Rating
    private var ratingSection: some View {
        HStack(spacing: 8) {

            ForEach(1...5, id: \.self) { star in

                if star <= author.rating {
                    Image(.yellowStarIcon)
        
                } else {
                    Image(.blackStarIcon)
                }
            }

            Text("(\(author.formattedRating))")
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(Color.grayText)
        }
        .frame(maxWidth: .infinity)
    }

    // MARK: - About
    private var aboutSection: some View {
        VStack(alignment: .leading, spacing: 12) {

            Text("About")
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(Color.grayText)

            Text(author.description)
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(Color.gray2Text)
                .lineSpacing(4)
        }
    }

    // MARK: - Product Card
    private func productCard(book: Book) -> some View {
        VStack(alignment: .leading, spacing: 8) {

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
            .frame(height: 185)
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 10))

            Text(book.title)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(Color.grayText)
                .lineLimit(1)

            Text(book.formattedPrice)
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(Color.burgundy)
        }
    }

    // MARK: - Products
    private var productsSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Products")
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(Color.grayText)

            LazyVGrid(
                columns: columns,
                spacing: 24
            ) {

                ForEach(author.books) { book in

                    productCard(book: book)
                        .contentShape(Rectangle())
                        .onTapGesture {

                            navigationViewModel.presentSheet(
                                .bookDetail(book)
                            )
                        }
                }
            }
        }
    }

    // MARK: - Body
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                authorInfo
                ratingSection
                aboutSection
                productsSection
            }
            .padding(.horizontal, 24)
            .padding(.top, 16)
            .padding(.bottom, 30)
        }
        .scrollIndicators(.hidden)
        .navigationTitle("Authors")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {

    NavigationStack {
        AuthorDetailView(
            author: Author.mockData[3]
        )
        .environmentObject(NavigationViewModel())
    }
}
