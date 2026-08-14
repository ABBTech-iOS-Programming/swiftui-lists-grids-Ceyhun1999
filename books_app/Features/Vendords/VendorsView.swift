import SwiftUI

struct VendorsView: View {

    // MARK: - Mock Data
    private let vendors = Vendor.mockData
    private let categories = Vendor.categories

    // MARK: - State
    @State private var selectedCategory = "All"

    // MARK: - Filtered Vendors
    private var filteredVendors: [Vendor] {
        if selectedCategory == "All" {
            return vendors
        }

        return vendors.filter { vendor in
            vendor.category == selectedCategory
        }
    }

    // MARK: - Grid Columns
    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible()),
    ]

    // MARK: - Header Section
    private var headerSection: some View {
        ScreenHeaderView(
            subtitle: "Our Vendors",
            title: "Vendors"
        )
    }

    // MARK: - Category Section
    private var categorySection: some View {
        CategoryView(
            categories: categories,
            selectedCategory: $selectedCategory
        )
    }

    // MARK: - Vendors Grid
    private var vendorsGrid: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(filteredVendors) { vendor in
                VendorCardView(vendor: vendor)
            }
        }
        .padding(.horizontal, 24)
    }

    // MARK: - Body
    var body: some View {
        ScrollView {
            LazyVStack {
                headerSection
                categorySection
                vendorsGrid
            }
        }
        .scrollIndicators(.hidden)
        .navigationTitle("Vendors")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        VendorsView()
    }
}
