//
//  garden.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
// 🫘🌱🪴🌳
//

import SwiftUI

struct garden: View {
    var body: some View {
        ZStack{ Color(.white)
                .ignoresSafeArea()
            VStack {
                Spacer()
                   
                HStack {
                 
                    Text("Garden")
                        .font(.custom("LibreBaskerville-Bold", size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.435, saturation: 0.888, brightness: 0.36))
                    Spacer()
                    Text(" 🍁__leafpoints")
                        .padding()
                }
                .padding()
                Spacer()
                
                Color(.white) //red: 213/255, green: 255/255, blue: 255/255)
                    .padding()
                    .background(Rectangle())
                    .foregroundStyle(Color(red: 131/255, green: 105/255, blue: 83/255))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
            }
            
            VStack{
             
        
                Image("seed")
                    .resizable()
                    .frame(width: 320, height: 500)
                    .padding()
                    
                
            }
            
    
                
        
        }
    }
    
    
    
   
}
#Preview {
    garden()
}
