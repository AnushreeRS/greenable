//
//  u r sprout.swift
//  greenable
//
//  Created by Olive Luong on 7/31/25.
//

import SwiftUI

struct u_r_sprout: View {
    var body: some View {
        Text("You are a sprout! You've dabbled in environmentally friendliness but you're ready to get super into it 🌱")
            .multilineTextAlignment(.center)
            .padding(20)
            .font(.custom("Poppins", size: 20))
            .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
    }
}

#Preview {
    u_r_sprout()
}
