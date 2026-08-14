import SDWebImageSwiftUI
import SwiftUI

struct VendorCardView: View {
    let vendor: Vendor

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VendorImageView(vendor: vendor, width: nil)
            Text(vendor.name)
                .foregroundStyle(Color(.grayText))
                .font(.system(size: 16, weight: .medium))
                .lineLimit(1)
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
    }
}

#Preview {
    let vendor = Vendor.mockData[0]
    VendorCardView(vendor: vendor)
}
