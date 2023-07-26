//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Andrew Acton on 7/26/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//: Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }//: Body
}//: Struct

// MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 14")
            .background(Color.gray)
//            .previewLayout(.sizeThatFits)
    }
}
