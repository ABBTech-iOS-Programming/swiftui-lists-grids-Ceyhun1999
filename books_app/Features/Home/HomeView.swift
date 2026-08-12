import SwiftUI

struct HomeView: View {
    @State private var selectedPage = 0

    var body: some View {
        NavigationStack {
            VStack {
                TabView(selection: $selectedPage) {
                    OfferCardView()
                        .tag(0)

                    OfferCardView()
                        .tag(1)

                    OfferCardView()
                        .tag(2)
                }
                .frame(height: 145)
                .tabViewStyle(.page(indexDisplayMode: .never))

                HStack(spacing: 8) {
                    ForEach(0..<3, id: \.self) { index in
                        Circle()
                            .fill(
                                selectedPage == index
                                    ? Color.burgundy
                                    : Color.gray.opacity(0.3)
                            )
                            .frame(
                                width: selectedPage == index ? 8 : 4,
                                height: selectedPage == index ? 8 : 4
                            )
                    }
                }
            }
            .padding(24)
        }
    }

}

#Preview {
    HomeView()
}
