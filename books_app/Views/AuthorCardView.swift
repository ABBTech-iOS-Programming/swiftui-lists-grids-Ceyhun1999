import SwiftUI
import SDWebImageSwiftUI

struct AuthorCardView: View {
    let imageUrl: String
    let name: String
    let role: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
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
            .frame(width: 102,height: 102)
            .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .foregroundStyle(Color(.grayText))
                    .font(.system(size: 16, weight: .semibold))
                
                Text(role)
                    .foregroundStyle(Color(.gray2Text))
                    .font(.system(size: 14, weight: .regular))
            }
        }
        .frame(width: 130)
    }
}

#Preview {
    AuthorCardView(imageUrl: "https://i.pravatar.cc/300?img=12", name: "Ceyhun Rzayev", role: "IOS dev")
}
