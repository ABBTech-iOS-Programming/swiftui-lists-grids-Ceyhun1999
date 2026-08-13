import SwiftUI

struct HomeView: View {

    // MARK: - Mock Data
    var books: [Book] = Book.shared
    var vendors: [Vendor] = Vendor.mockData
    var authors: [Author] = Author.mockData

    // MARK: - State
    @State private var selectedOfferIndex = 0

    // MARK: - Offer Section
    var offerCarousel: some View {
        TabView(selection: $selectedOfferIndex) {
            OfferCardView()
                .tag(0)

            OfferCardView()
                .tag(1)

            OfferCardView()
                .tag(2)
        }
        .frame(height: 145)
        .tabViewStyle(.page(indexDisplayMode: .never))
    }

    var offerPageIndicator: some View {
        HStack(spacing: 8) {
            ForEach(0..<3, id: \.self) { index in
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
    var topOfWeekHeader: some View {
        HStack(alignment: .center) {
            SectionTitleView(title: "Top of Week")

            Spacer()

            NavigationLink {
                AllBooksView()
            } label: {
                SeeAllTextView()
            }
        }
        .padding(.horizontal, 24)
    }

    var topOfWeekBooks: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(books) { book in
                    BookCardView(
                        imageUrl: book.imageURL,
                        title: book.title,
                        price: book.price
                    )
                }
            }
            .padding(.horizontal, 24)
        }
        .scrollIndicators(.hidden)
    }

    var topOfWeekSection: some View {
        VStack(spacing: 16) {
            topOfWeekHeader
            topOfWeekBooks
        }
    }

    // MARK: - Best Vendors Section
    var bestVendorsHeader: some View {
        HStack(alignment: .center) {
            SectionTitleView(title: "Best Vendors")

            Spacer()

            NavigationLink {
                AllBooksView()
            } label: {
                SeeAllTextView()
            }
        }
        .padding(.horizontal, 24)
    }

    var bestVendors: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 14) {
                ForEach(vendors) { vendor in
                    BestVendorCardView(imageUrl: vendor.imageURL)
                }
            }
            .padding(.horizontal, 24)
        }
        .scrollIndicators(.hidden)
    }

    var bestVendorsSection: some View {
        VStack(spacing: 16) {
            bestVendorsHeader
            bestVendors
        }
    }

    // MARK: - Authors Section
    var authorsHeader: some View {
        HStack(alignment: .center) {
            SectionTitleView(title: "Authors")

            Spacer()

            NavigationLink {
                AllBooksView()
            } label: {
                SeeAllTextView()
            }
        }
        .padding(.horizontal, 24)
    }

    var authorsSlider: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
                ForEach(authors) { author in
                    AuthorCardView(
                        imageUrl: author.imageURL,
                        name: author.name,
                        role: author.role
                    )
                }
            }
            .padding(.horizontal, 24)
        }
        .scrollIndicators(.hidden)
    }

    var authorsSection: some View {
        VStack {
            VStack(spacing: 16) {
                authorsHeader
                authorsSlider
            }
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
