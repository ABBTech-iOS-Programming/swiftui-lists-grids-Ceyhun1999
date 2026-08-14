import SwiftUI

struct CategoryView: View {

    // MARK: - Properties
    let categories: [String]

    // MARK: - Binding
    @Binding var selectedCategory: String

    // MARK: - Category Button
    private func categoryButton(_ category: String) -> some View {
        let isSelected = selectedCategory == category

        return Button {
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

    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 24) {
                ForEach(categories, id: \.self) { category in
                    categoryButton(category)
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
