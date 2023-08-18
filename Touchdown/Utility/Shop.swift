//
//  Shop.swift
//  Touchdown
//
//  Created by Andrew Acton on 8/17/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
