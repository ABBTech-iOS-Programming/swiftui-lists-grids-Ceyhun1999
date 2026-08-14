import SwiftUI

struct VendorCardView: View {
    
    // MARK: - Properties
    let vendor: Vendor
    
    // MARK: - Vendor Name
    private var vendorName: some View {
        Text(vendor.name)
            .foregroundStyle(Color(.grayText))
            .font(.system(size: 16, weight: .medium))
            .lineLimit(1)
    }
    
    // MARK: - Vendor Rating
    private var vendorRating: some View {
        HStack(spacing: 5) {
            ForEach(1...5, id: \.self) { index in
                Image(
                    index <= vendor.rating
                        ? .yellowStarIcon
                        : .blackStarIcon
                )
            }
        }
    }
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VendorImageView(
                vendor: vendor,
                width: nil
            )
            
            vendorName
            vendorRating
        }
    }
}

#Preview {
    VendorCardView(
        vendor: Vendor.mockData[0]
    )
}
