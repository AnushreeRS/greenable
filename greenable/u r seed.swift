//
//  u r seed.swift
//  greenable
//
//  Created by Olive Luong on 7/31/25.
//

import SwiftUI

struct u_r_seed: View {
    var body: some View {
        Text("You are a seed! You're not so environmentally friendly yet, but you're ready to be 🪏")
            .multilineTextAlignment(.center)
            .padding(20)
            .font(.custom("Poppins", size: 20))
            .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
    }
}

#Preview {
    u_r_seed()
}
