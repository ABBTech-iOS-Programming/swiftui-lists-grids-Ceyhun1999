import SwiftUI

struct CategoryView: View {

    let categories: [String]

    @Binding var selectedCategory: String

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 24) {
                ForEach(categories, id: \.self) { category in
                    let isSelected = selectedCategory == category

                    Button {
                        selectedCategory = category
                    } label: {
                        VStack(spacing: 6) {
                            Text(category)
                                .font(
                                    .system(
                                        size: isSelected ? 18 : 16,
                                        weight: isSelected ? .bold : .regular
                                    )
                                )
                                .foregroundStyle(
                                    isSelected
                                        ? Color(.grayText)
                                        : Color(.gray2Text)
                                )

                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color(.burgundy))
                                .frame(height: 2)
                                .opacity(isSelected ? 1 : 0)
                        }
                    }
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 30)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    @Previewable @State var selectedCategory = "All"

    CategoryView(
        categories: Vendor.categories,
        selectedCategory: $selectedCategory
    )
}
