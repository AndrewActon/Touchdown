//
//  ContentView.swift
//  Touchdown
//
//  Created by Andrew Acton on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                                
                ScrollView() {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(height: 300)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: rowSpacing) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }//: Loop
                        }//: VGrid
                        .padding(15)
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }//: VStack
                }//: Scroll
            }//: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }//: Body
}//: Struct

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
