//
//  ContentView.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Greenable")
                    .font(.largeTitle)
                //Image("")
                NavigationLink(destination: garden()) {
                    Text("Garden")
                }
                NavigationLink(destination: tasks()) {
                    Text("More Tasks")
                }
                NavigationLink(destination: survey()) {
                    Text("Survey")
                }
                NavigationLink(destination: garden()) {
                    Text("More Tasks")
                }
                    
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
