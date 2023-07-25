//
//  ContentView.swift
//  Touchdown
//
//  Created by Andrew Acton on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        FooterView()
            .padding(.horizontal)
    }//: Body
}//: Struct

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
