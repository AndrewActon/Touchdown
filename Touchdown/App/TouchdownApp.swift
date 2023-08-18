//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Andrew Acton on 7/25/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
