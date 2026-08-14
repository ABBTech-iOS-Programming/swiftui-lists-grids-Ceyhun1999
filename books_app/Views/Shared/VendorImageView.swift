import SDWebImageSwiftUI
import SwiftUI

struct VendorImageView: View {

    let vendor: Vendor
    var width: CGFloat? = 100
    var height: CGFloat = 100

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
            .frame(width: width, height: height)
            .frame(maxWidth: width == nil ? .infinity : nil)
            .background(Color(.bestVendorBg))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    VendorImageView(vendor: Vendor.mockData[0])
}
