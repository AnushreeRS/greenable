//
//  info.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
//

import SwiftUI

struct info: View {
    var body: some View {
        
        
        ScrollView {
            Text("Our Mission")
                .font(.custom("LibreBaskerville-Bold",size: 60))
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                .padding(.top, 35)

            Text ("Have you ever wanted to be more environmentally friendly to save our warming planet but found it too difficult? Well you are in the right place")
                .padding(.horizontal, 40)
                .padding(.vertical, 5)
                .foregroundColor(Color.white)
                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                .cornerRadius(40)
                .font(.custom("LibreBaskerville-Regular",size: 23))
                           .lineSpacing(6)
            
            Text ("Did you know that our planet‘s temperature is rising at an average rate of  0.11 degrees farenheit  per decade? And that the average US household generates approximately 287 pounds of  plastic waste a year? These are just some of the many harmful changes to our planet")
                .padding(.horizontal, 40)
                .padding(.vertical, 40)
                .foregroundColor(Color.white)
                .background(Color(.brown))
                .cornerRadius(40)
                .font(.custom("LibreBaskerville-Regular",size: 23))
                           .lineSpacing(6)
            Text ("Hello! Our names are Anushree, Emily, Olive, and Sophie, the creators of Greenable. We aim to encourage others to live a comfortable lifestyle without the cost of damaging our Earth!")
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .foregroundColor(Color.white)
                .background(Color(.blue))
                .cornerRadius(40)
                .font(.custom("LibreBaskerville-Regular",size: 23))
                .lineSpacing(6)
            
            
        }  .padding(22)
            .background(Color(red:0.85, green:0.95, blue: 0.81))
            .ignoresSafeArea()
        

    }
}

#Preview {
    info()
}
