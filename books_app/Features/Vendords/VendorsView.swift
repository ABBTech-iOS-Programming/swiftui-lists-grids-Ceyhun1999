import SwiftUI

struct VendorsView: View {
    @State private var selectedCategory: VendorCategory = .all
    
    var vendors = Vendor.mockData
    
    private var filteredVendors: [Vendor] {
        if selectedCategory == .all {
            return vendors
        }
        
        return vendors.filter { vendor in
            vendor.category == selectedCategory
        }
    }
    
    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    VStack(alignment: .leading,spacing: 5) {
                        Text("Our Vendors")
                            .foregroundStyle(Color(.gray2Text))
                            .font(.system(size: 16, weight: .regular))
                        Text("Vendors")
                            .foregroundStyle(Color(.burgundy))
                            .font(.system(size: 20, weight: .bold))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 24)
                    
                    VendorCategoryView(selectedCategory: $selectedCategory)
                 
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(filteredVendors) { vendor in
                            VendorCardView(vendor: vendor)
                        }
                    }
                    .padding(.horizontal, 24)
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
