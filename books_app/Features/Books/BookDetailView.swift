import SwiftUI
import SDWebImageSwiftUI

struct BookDetailView: View {

    let book: Book

    @Environment(\.dismiss) private var dismiss

    @State private var isFavorite = false
    @State private var quantity = 1

    // MARK: - Total Price
    private var totalPrice: Double {
        book.price * Double(quantity)
    }

    private var formattedTotalPrice: String {
        "$\(totalPrice.formatted(.number.precision(.fractionLength(2))))"
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
        .frame(width: 237, height: 340)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .frame(maxWidth: .infinity)
    }

    // MARK: - Book Info
    private var bookInfo: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(book.title)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(Color.grayText)

                Spacer()

                Button {
                    isFavorite.toggle()
                } label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .font(.system(size: 24))
                        .foregroundStyle(Color.burgundy)
                }
            }

            WebImage(url: URL(string: book.vendorImageURL)) { image in
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
            .frame(width: 80, height: 40)

            Text(book.description)
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(Color.gray2Text)
                .lineSpacing(4)
        }
    }

    // MARK: - Review
    private var reviewSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Review")
                .font(.system(size: 18, weight: .bold))
            HStack(spacing: 6) {
                ForEach(1...5, id: \.self) { star in

                    if star <= book.rating {
                        Image(.yellowStarIcon)
                    } else {
                        Image(.blackStarIcon)
                    }
                }

                Text("(\(book.formattedRating))")
                    .font(.system(size: 14, weight: .semibold))
            }
        }
    }

    // MARK: - Quantity
    private var quantitySection: some View {
        HStack(spacing: 18) {
            QuantityView(quantity: $quantity)
            Text(formattedTotalPrice)
                .font(.system(size: 15, weight: .medium))
                .foregroundStyle(Color.burgundy)

            Spacer()
        }
    }

    // MARK: - Action Buttons
    private var actionButtons: some View {
        HStack(spacing: 14) {
            Button {
                dismiss()
            } label: {
                Text("Continue shopping")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.burgundy)
                    .clipShape(Capsule())
            }

            Text("View cart")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(Color.burgundy)
                .frame(width: 130)
                .frame(height: 48)
                .background(Color.burgundy.opacity(0.06))
                .clipShape(Capsule())
        }
    }

    // MARK: - Body
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                bookImage
                bookInfo
                reviewSection
                quantitySection
                actionButtons
            }
            .padding(.horizontal, 24)
            .padding(.top, 20)
            .padding(.bottom, 30)
        }
        .scrollIndicators(.hidden)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {

    let book = Book.mockdata[0]
    NavigationStack {
        BookDetailView(book: book)
    }
}
