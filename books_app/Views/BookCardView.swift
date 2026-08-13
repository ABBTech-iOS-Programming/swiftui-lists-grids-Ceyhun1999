import SDWebImageSwiftUI
import SwiftUI

struct BookCardView: View {

    let imageUrl: String
    let title: String
    let price: Double

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            WebImage(url: URL(string: imageUrl)) { image in
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
        
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .foregroundStyle(Color(.grayText))
                    .font(.system(size: 14, weight: .medium))

                Text("$\(String(price))")
                    .foregroundStyle(.burgundy)
                    .font(.system(size: 12, weight: .bold))
            }
        }
        .frame(width: 130)
        
    }
}

#Preview {
    BookCardView(
        imageUrl:
            "https://img.magnific.com/free-vector/elegant-love-book-cover-template_23-2148798559.jpg?semt=ais_test_b&w=740&q=80",
        title: "Text title",
        price: 14.5
    )
}
