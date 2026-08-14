import SwiftUI

struct VendorsView: View {
    
    // MARK: - Mock Data
    private let vendors = Vendor.mockData
    
    // MARK: - State
    @State private var selectedCategory: VendorCategory = .all
    
    // MARK: - Filtered Vendors
    private var filteredVendors: [Vendor] {
        if selectedCategory == .all {
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
        GridItem(.flexible())
    ]
    
    // MARK: - Header Section
    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Our Vendors")
                .foregroundStyle(Color(.gray2Text))
                .font(.system(size: 16, weight: .regular))
            
            Text("Vendors")
                .foregroundStyle(Color(.burgundy))
                .font(.system(size: 20, weight: .bold))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
    }
    
    // MARK: - Category Section
    private var categorySection: some View {
        VendorCategoryView(
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
        NavigationStack {
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
}

#Preview {
    VendorsView()
}
