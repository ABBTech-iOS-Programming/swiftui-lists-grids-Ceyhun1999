import SwiftUI

struct SectionHeaderView<Destination: View>: View {
    let title: String
    let destination: Destination
    
    var body: some View {
        HStack(alignment: .center) {
            SectionTitleView(title: title)

            Spacer()

            NavigationLink {
                destination
            } label: {
                SeeAllTextView()
            }
        }
        .padding(.horizontal, 24)
    }
}
