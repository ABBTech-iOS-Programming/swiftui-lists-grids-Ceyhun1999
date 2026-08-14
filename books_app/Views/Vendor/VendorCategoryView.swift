import SwiftUI

struct VendorCategoryView: View {
    
    // MARK: - Binding
    @Binding var selectedCategory: VendorCategory
    
    // MARK: - Category Button
    private func categoryButton(for category: VendorCategory) -> some View {
        let isSelected = selectedCategory == category
        
        return Button {
            selectedCategory = category
        } label: {
            VStack(spacing: 6) {
                Text(category.rawValue)
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
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(VendorCategory.allCases, id: \.self) { category in
                    categoryButton(for: category)
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 30)
        }
    }
}
