import SwiftUI

struct OfferCardView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 14) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Special Offer")
                        .foregroundStyle(Color(.grayText))
                        .font(.system(size: 20))
                        .bold()
                    Text("Discount 25%")
                        .foregroundStyle(Color(.grayText))
                        .font(.system(size: 14, weight: .regular))
                }
                
                Button {
                    print("Order Now")
                } label: {
                    Text("Order Now")
                        .padding(.horizontal, 24)
                        .padding(.vertical, 8)
                        .background(Color(.burgundy))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .bold()
                }
            }

            Spacer()

            Image(.apollo)
                .resizable()
                .scaledToFill()
                .frame(width: 99, height: 145)
                .clipped()
                

        }
        .padding(.leading, 20)
        .background(Color(.primaryBg))
        .padding(24)
        .clipShape(
            UnevenRoundedRectangle(
                topLeadingRadius: 12,
                bottomLeadingRadius: 12
            )
        )
    }
}

#Preview {
    OfferCardView()
}
