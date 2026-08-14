import SwiftUI

struct HomeView: View {

    // MARK: - Mock Data
    var books: [Book] = Book.mockdata
    var vendors: [Vendor] = Vendor.mockData
    var authors: [Author] = Author.mockData

    // MARK: - State
    @State private var selectedOfferIndex = 0

    // MARK: - Discounted Books
    private var discountedBooks: [Book] {
        books.filter { $0.discount != nil }
    }

    // MARK: - Offer Section
    var offerCarousel: some View {
        TabView(selection: $selectedOfferIndex) {
            ForEach(Array(discountedBooks.enumerated()), id: \.element.id) { index, book in
                OfferCardView(book: book)
                    .tag(index)
            }
        }
        .frame(height: 145)
        .tabViewStyle(.page(indexDisplayMode: .never))
    }

    var offerPageIndicator: some View {
        HStack(spacing: 8) {
            ForEach(0..<discountedBooks.count, id: \.self) { index in
                Circle()
                    .fill(
                        selectedOfferIndex == index
                            ? Color.burgundy
                            : Color.gray.opacity(0.3)
                    )
                    .frame(
                        width: selectedOfferIndex == index ? 8 : 4,
                        height: selectedOfferIndex == index ? 8 : 4
                    )
            }
        }
    }

    var offerSection: some View {
        VStack {
            offerCarousel
            offerPageIndicator
        }
    }

    // MARK: - Top of Week Section
    var topOfWeekBooks: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(books) { book in
                    BookCardView(book: book)
                }
            }
            .padding(.horizontal, 24)
        }
        .scrollIndicators(.hidden)
    }

    var topOfWeekSection: some View {
        VStack(spacing: 16) {
            SectionHeaderView(
                title: "Top of Week",
                destination: AllBooksView()
            )

            topOfWeekBooks
        }
    }

    // MARK: - Best Vendors Section
    var bestVendors: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 14) {
                ForEach(vendors) { vendor in
                    VendorImageView(vendor: vendor)
                }
            }
            .padding(.horizontal, 24)
        }
        .scrollIndicators(.hidden)
    }

    var bestVendorsSection: some View {
        VStack(spacing: 16) {
            SectionHeaderView(
                title: "Best Vendors",
                destination: VendorsView()
            )

            bestVendors
        }
    }

    // MARK: - Authors Section
    var authorsSlider: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
                ForEach(authors) { author in
                    AuthorCardView(author: author)
                }
            }
            .padding(.horizontal, 24)
        }
        .scrollIndicators(.hidden)
    }

    var authorsSection: some View {
        VStack(spacing: 16) {
            SectionHeaderView(
                title: "Authors",
                destination: AuthorsView()
            )

            authorsSlider
        }
    }

    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVStack(spacing: 32) {
                    offerSection
                    topOfWeekSection
                    bestVendorsSection
                    authorsSection
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    HomeView()
}
