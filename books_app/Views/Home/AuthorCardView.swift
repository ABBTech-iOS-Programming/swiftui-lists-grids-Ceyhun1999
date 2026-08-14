import SDWebImageSwiftUI
import SwiftUI

struct AuthorCardView: View {

    let author: Author

    // MARK: - Author Image
    private var authorImage: some View {
        WebImage(url: URL(string: author.imageURL)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Color(uiColor: .systemGray5)
                .overlay {
                    ProgressView()
                        .tint(.secondary)
                }
        }
        .frame(width: 102, height: 102)
        .clipShape(Circle())
    }

    // MARK: - Author Info
    private var authorInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(author.name)
                .foregroundStyle(Color(.grayText))
                .font(.system(size: 16, weight: .semibold))

            Text(author.role)
                .foregroundStyle(Color(.gray2Text))
                .font(.system(size: 14, weight: .regular))
        }
    }

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            authorImage
            authorInfo
        }
        .frame(width: 130)
    }
}

#Preview {
    AuthorCardView(author: Author.mockData[0])
}
