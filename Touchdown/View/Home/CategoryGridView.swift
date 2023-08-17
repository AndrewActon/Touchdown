//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Andrew Acton on 8/16/23.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }//: Loop
                }//: Section
            }//: Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: Scroll
    }//: Body
}//: Struct

// MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
