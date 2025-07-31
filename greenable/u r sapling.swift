//
//  u r sapling.swift
//  greenable
//
//  Created by Olive Luong on 7/31/25.
//

import SwiftUI

struct u_r_sapling: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red:0.97, green:0.96, blue: 0.92)
                    .ignoresSafeArea()
                VStack {
                    Text("You are a sapling! You've been out in the world making your environmentally friendly impact already, but now your impact is gonna skyrocket 🪾")
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .font(.custom("Poppins", size: 20))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    NavigationStack {
                        
                        
                    }
                    
                }
            }
        }
    }
}

#Preview {
    u_r_sapling()
}
