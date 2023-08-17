//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Andrew Acton on 8/16/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
