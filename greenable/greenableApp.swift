//
//  greenableApp.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
//

import SwiftUI

@main
struct greenableApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
        .modelContainer(for: LeafPoint.self)
    }
}
