import SwiftUI
import SDWebImageSwiftUI

struct BookDetailView: View {

    let book: Book

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
        .frame(width: 237, height: 313)
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
                Image(.loveIcon)
                    .frame(width: 24, height: 24)
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
                .foregroundStyle(Color(.gray2Text))
                .lineSpacing(4)
            
          
        }
    }

    // MARK: - Review
    private var reviewSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Review")
                .font(.system(size: 18, weight: .bold))
            HStack(spacing: 6) {
                ForEach(0..<4, id: \.self) { _ in
                    Image(.yellowStarIcon)
                       
                }
                Image(.blackStarIcon)
                Text("(4.0)")
                    .font(.system(size: 14,weight: .semibold))
                  
            }
        }
    }

    // MARK: - Quantity
    private var quantitySection: some View {
        HStack(spacing: 18) {

            HStack(spacing: 18) {

                Image(systemName: "minus")
                    .foregroundStyle(.gray)
                    .frame(width: 30, height: 30)
                    .background(Color.gray.opacity(0.15))
                    .clipShape(Circle())

                Text("1")
                    .font(.headline)

                Image(systemName: "plus")
                    .foregroundStyle(.white)
                    .frame(width: 30, height: 30)
                    .background(Color.burgundy)
                    .clipShape(Circle())
            }

            Text("$\(book.price, specifier: "%.2f")")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(Color.burgundy)

            Spacer()
        }
    }

    // MARK: - Action Buttons
    private var actionButtons: some View {
        HStack(spacing: 14) {

            Text("Continue shopping")
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
                .background(Color.burgundy)
                .clipShape(Capsule())

            Text("View cart")
                .fontWeight(.semibold)
                .foregroundStyle(Color.burgundy)
                .frame(width: 130)
                .frame(height: 54)
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
