import SwiftUI

struct AuthorsView:View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                ScreenHeaderView(subtitle: "Check the authors", title: "Authors")
            }
            .navigationTitle("Authors")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    AuthorsView()
}
