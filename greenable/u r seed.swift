//
//  u r seed.swift
//  greenable
//
//  Created by Olive Luong on 7/31/25.
//

import SwiftUI

struct u_r_seed: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red:0.97, green:0.96, blue: 0.92)
                    .ignoresSafeArea()
                VStack {
                    Text("You are a seed! You're not so environmentally friendly yet, but you're ready to be 🪏")
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .font(.custom("Poppins", size: 20))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    NavigationStack {
                        NavigationLink(destination: garden()) {
                            Text("See your garden 🪴")
                                .font(.custom("Source Sans Pro", size: 30))
                                .padding(.horizontal, 23)
                                .padding(.vertical, 5)
                                .foregroundColor(Color.white)
                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                .cornerRadius(40)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    u_r_seed()
}
