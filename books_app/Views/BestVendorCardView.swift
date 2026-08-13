import SDWebImageSwiftUI
import SwiftUI

struct BestVendorCardView: View {
    let imageUrl: String

    var body: some View {
        VStack {
            WebImage(url: URL(string: imageUrl)) { image in
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
        .padding(15)
        .frame(width: 100, height: 100)
        .background(Color(.bestVendorBg))

        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    BestVendorCardView(
        imageUrl:
            "https://okmedia.az/img-yeni/veka-okmedia-referanslar-logo.png"
    )
}
