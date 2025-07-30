//
//  garden.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
//

import SwiftUI

struct garden: View {
    var body: some View {
        ZStack {
            Color(red: 213/255, green: 255/255, blue: 255/255)
                .ignoresSafeArea(edges: .all)
            VStack {
                Text("Garden")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.435, saturation: 0.888, brightness: 0.36))
                Spacer()
            }
          
        }
    }
    
    
}
#Preview {
    garden()
}
