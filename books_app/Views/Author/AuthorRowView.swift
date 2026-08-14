import SDWebImageSwiftUI
import SwiftUI

struct AuthorRowView: View {

    let author: Author

    // MARK: - Author Image
    private var authorImage: some View {
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
        .frame(width: 68, height: 68)
        .clipShape(Circle())
    }

    // MARK: - Author Info
    private var authorInfo: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(author.name)
                .foregroundStyle(Color(.grayText))
                .font(.system(size: 20, weight: .bold))

            Text(author.description)
                .foregroundStyle(Color(.gray2Text))
                .font(.system(size: 16, weight: .regular))
                .lineLimit(2)
        }
    }

    // MARK: - Body
    var body: some View {
        HStack(spacing: 12) {
            authorImage
            authorInfo
            Spacer()
        }
    }
}

#Preview {
    AuthorRowView(author: Author.mockData[0])
}
