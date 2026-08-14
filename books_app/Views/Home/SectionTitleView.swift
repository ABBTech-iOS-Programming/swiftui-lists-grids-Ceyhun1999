import SwiftUI

struct SectionTitleView: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
    }
}
