import SwiftUI

struct AuthorsView: View {

    // MARK: - Mock Data
    private let authors = Author.mockData
    private let categories = Author.categories

    // MARK: - State
    @State private var selectedCategory = "All"
    @State private var searchText = ""
    @State private var isSearching = false

    // MARK: - Filtered Authors
    private var filteredAuthors: [Author] {
        var result = authors

        if selectedCategory != "All" {
            result = result.filter { author in
                author.category == selectedCategory
            }
        }

        if !searchText.isEmpty {
            result = result.filter { author in
                author.name.localizedCaseInsensitiveContains(searchText)
            }
        }

        return result
    }

    // MARK: - Header Section
    private var headerSection: some View {
        ScreenHeaderView(
            subtitle: "Check the authors",
            title: "Authors"
        )
    }

    // MARK: - Category Section
    private var categorySection: some View {
        CategoryView(
            categories: categories,
            selectedCategory: $selectedCategory
        )
    }

    // MARK: - Authors List
    private var authorsList: some View {
        LazyVStack(spacing: 28) {
            ForEach(filteredAuthors) { author in
                AuthorRowView(author: author)
            }
        }
        .padding(.horizontal, 24)
    }

    // MARK: - Body
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                headerSection
                categorySection
                authorsList
            }
        }
        .scrollIndicators(.hidden)
        .navigationTitle("Authors")
        .navigationBarTitleDisplayMode(.inline)
        .searchable(
            text: $searchText,
            isPresented: $isSearching,
            prompt: "Search authors"
        )
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    isSearching = true
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(Color(.grayText))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AuthorsView()
    }
}
