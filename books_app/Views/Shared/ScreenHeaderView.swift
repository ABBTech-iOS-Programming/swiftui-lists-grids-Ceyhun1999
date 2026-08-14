import SwiftUI

struct ScreenHeaderView: View {
    let subtitle: String
    let title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(subtitle)
                .foregroundStyle(Color(.gray2Text))
                .font(.system(size: 16, weight: .regular))

            Text(title)
                .foregroundStyle(Color(.burgundy))
                .font(.system(size: 20, weight: .bold))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 24)
    }
}
