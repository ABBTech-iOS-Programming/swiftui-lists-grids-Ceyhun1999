import SDWebImageSwiftUI
import SwiftUI

struct BestVendorCardView: View {

    let vendor: Vendor

    // MARK: - Vendor Image
    private var vendorImage: some View {
        WebImage(url: URL(string: vendor.imageURL)) { image in
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
    }

    // MARK: - Body
    var body: some View {
        vendorImage
            .padding(15)
            .frame(width: 100, height: 100)
            .background(Color(.bestVendorBg))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    BestVendorCardView(vendor: Vendor.mockData[0])
}
