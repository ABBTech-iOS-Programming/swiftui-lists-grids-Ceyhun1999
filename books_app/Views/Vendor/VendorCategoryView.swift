import SwiftUI

struct VendorCategoryView: View {

    @Binding var selectedCategory: VendorCategory

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(VendorCategory.allCases, id: \.self) { category in
                    Button {
                        selectedCategory = category
                    } label: {
                        VStack(spacing: 6) {
                            Text(category.rawValue)
                                .font(
                                    .system(
                                        size: selectedCategory == category
                                            ? 18 : 16,
                                        weight: selectedCategory == category
                                            ? .bold : .regular
                                    )
                                )
                                .foregroundStyle(
                                    selectedCategory == category
                                        ? Color(.grayText)
                                        : Color(.gray2Text)
                                )

                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color(.burgundy))
                                .frame(height: 2)
                                .opacity(selectedCategory == category ? 1 : 0)
                        }
                    }
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 30)
        }
    }
}
