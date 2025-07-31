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
            ZStack() {
                Color(red: 0.969, green: 0.961, blue: 0.92)
                    .ignoresSafeArea()
                VStack() {
                    Text("Greenable🌱")
                        .font(.custom("LibreBaskerville-Bold",size: 60))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                        .padding(.bottom, 31.0)
                    //.backgroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    
                    Text("Fact about Plastic")
                        .font(.custom("Poppins-SemiBold",size: 20))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    
                    Image("plastic_bad")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 200)
                        .cornerRadius(15)
                    
                    Text("Today Task:")
                        .font(.custom("Poppins-SemiBold",size: 18))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    
                    
                    Text("----add task here----")
                        .font(.custom("Poppins-SemiBold",size: 15))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    
                    
                    HStack(){
                        NavigationLink(destination: garden()) {
                            Image("graden")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding(.trailing, -50.0)
                                .frame(width: 250, height: 100)
                                .cornerRadius(15)
                        }
                        NavigationLink(destination: tasks()) {
                            Image("tasks")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding(.leading, -50.0)
                                .frame(width: 250, height: 97)
                                .cornerRadius(15)
                            
                        }
                    }
                    
                    HStack(){
                        NavigationLink(destination: survey()) {
                            Image("survey")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding(.trailing, -50.0)
                                .frame(width: 250, height: 100)
                                .cornerRadius(15)
                            
                        }
                        NavigationLink(destination: info()) {
                            Image("info")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .padding(.leading, -50.0)
                                .frame(width: 250, height: 100)
                                .cornerRadius(15)
                            
                        }
                    }
                    Text("Big things often have small beginning...")
                        .font(.custom("Poppins-SemiBold",size: 18))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
