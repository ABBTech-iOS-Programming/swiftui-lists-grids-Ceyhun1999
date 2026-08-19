import SwiftUI

struct QuantityView: View {

    @Binding var quantity: Int

    var body: some View {

        HStack(spacing: 18) {

            Button {
                if quantity > 0 {
                    quantity -= 1
                }
            } label: {
                Image(systemName: "minus")
                    .foregroundStyle(.gray)
                    .frame(width: 24, height: 24)
                    .background(Color.gray.opacity(0.15))
                    .clipShape(Circle())
            }

            Text("\(quantity)")
                .font(.system(size: 16, weight: .medium))

            Button {
                quantity += 1
            } label: {
                Image(systemName: "plus")
                    .foregroundStyle(.white)
                    .frame(width: 24, height: 24)
                    .background(Color.burgundy)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    @Previewable @State var quantity = 1

    QuantityView(quantity: $quantity)
}
