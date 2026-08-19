import SwiftUI

struct AuthorsView: View {

    // MARK: - Mock Data
    private let authors = Author.mockData
    private let categories = Author.categories
    
    // MARK: - State
    @State private var selectedCategory = "All"
    @State private var searchText = ""
    @State private var isSearching = false

    @FocusState private var isSearchFocused: Bool

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

                NavigationLink(
                    value: Root.authorsDetail(author)
                ) {

                    AuthorRowView(author: author)
                }
                .buttonStyle(.plain)
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
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {

            // MARK: - Title / Search Field
            ToolbarItem(placement: .principal) {
                Group {
                    if isSearching {
                        HStack(spacing: 10) {
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(.secondary)

                            TextField(
                                "Search author...",
                                text: $searchText
                            )
                            .textFieldStyle(.plain)
                            .focused($isSearchFocused)

                            if !searchText.isEmpty {
                                Button {
                                    searchText = ""
                                } label: {

                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                        .padding(.horizontal, 12)
                        .frame(height: 38)
                        .background(Color(.systemGray6))
                        .clipShape(Capsule())
                        .frame(width: 280)

                    } else {

                        Text("Authors")
                            .font(.system(size: 18, weight: .bold))
                    }
                }
            }

            // MARK: - Search Button
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    withAnimation(.easeInOut(duration: 0.25)) {
                        isSearching.toggle()
                    }

                    if isSearching {
                        isSearchFocused = true
                    } else {
                        searchText = ""
                        isSearchFocused = false
                    }

                } label: {
                    Image(
                        systemName: isSearching
                            ? "xmark"
                            : "magnifyingglass"
                    )
                    .foregroundStyle(Color.grayText)
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
