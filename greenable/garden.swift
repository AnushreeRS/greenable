//
//  garden.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
//
//

import SwiftUI

struct garden: View {
    @State private var currentImageIndex: Int = 0
    let imageNames: [String] = ["blueseed", "bluesprout", "bluebud", "blueflower"]
    var body: some View {
        ZStack{ Color (red: 0.969, green: 0.961, blue: 0.92)
                .ignoresSafeArea()
            VStack {
                Spacer()
                   
                HStack {
                 
                    Text("Garden")
                        .font(.custom("LibreBaskerville-Bold", size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.435, saturation: 0.888, brightness: 0.36))
                    Spacer()
                    Text(" 🌱__leafpoints")
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.435, saturation: 0.888, brightness: 0.36))
                        .padding()
                }
                .padding()
                Spacer()
                
                Color(red: 213/255, green: 255/255, blue: 255/255)
                    .padding()
                    .background(Rectangle())
                    .foregroundStyle(Color(red: 131/255, green: 105/255, blue: 83/255))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
            }
            
            VStack{
           
        
                if currentImageIndex == 0 {
                              Image("blueseed")
                                  .resizable()
                                  .scaledToFit()
                                  .frame(width: 400, height: 350)
                          } else if currentImageIndex == 1 {
                              Image("bluesprout")
                                  .resizable()
                                  .scaledToFit()
                                  .frame(width: 400, height: 350)
                          } else if currentImageIndex == 2 {
                              Image("bluebud")
                                  .resizable()
                                  .scaledToFit()
                                  .frame(width: 400, height: 350)
                          } else { // currentImageIndex == 3 or any other value
                              Image("blueflower")
                                  .resizable()
                                  .scaledToFit()
                                  .frame(width: 400, height: 350)
                          }
                Button("Change Image") {
                                   currentImageIndex = (currentImageIndex + 1) % 4 // Cycle through 0, 1, 2, 3
                               }
                
            }
            
    
                
        
        }
   
    }
    
    
    
   
}
#Preview {
    garden()
}
