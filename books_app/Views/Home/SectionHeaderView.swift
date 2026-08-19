import SwiftUI

struct SectionHeaderView: View {

    let title: String
    let destination: Root

    var body: some View {

        HStack(alignment: .center) {

            SectionTitleView(title: title)

            Spacer()

            NavigationLink(value: destination) {

                SeeAllTextView()

            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, 24)
    }
}
