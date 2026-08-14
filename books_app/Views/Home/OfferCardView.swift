import SDWebImageSwiftUI
import SwiftUI

struct OfferCardView: View {

    let book: Book

    // MARK: - Offer Info
    private var offerInfo: some View {
        VStack(alignment: .leading, spacing: 14) {
            VStack(alignment: .leading, spacing: 2) {
                Text("Special Offer")
                    .foregroundStyle(Color(.grayText))
                    .font(.system(size: 20, weight: .bold))

                if let discount = book.discount {
                    Text("Discount \(discount)%")
                        .foregroundStyle(Color(.grayText))
                        .font(.system(size: 14, weight: .regular))
                }
            }

            orderButton
        }
    }

    // MARK: - Order Button
    private var orderButton: some View {
        Button {
            print("Order Now")
        } label: {
            Text("Order Now")
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
                .background(Color(.burgundy))
                .clipShape(RoundedRectangle(cornerRadius: 40))
        }
    }

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
        .frame(width: 99, height: 145)
        .clipped()
    }

    // MARK: - Body
    var body: some View {
        HStack {
            offerInfo

            Spacer()

            bookImage
        }
        .padding(.leading, 20)
        .background(Color(.primaryBg))
        .clipShape(
            UnevenRoundedRectangle(
                topLeadingRadius: 12,
                bottomLeadingRadius: 12
            )
        )
        .padding(.horizontal, 24)
    }
}

#Preview {
    OfferCardView(book: Book.mockdata[0])
}
