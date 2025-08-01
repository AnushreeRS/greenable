//
//  survey.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
//

import SwiftUI


struct survey: View {
    var body: some View {
        ZStack {
            Color(red:0.97, green:0.96, blue: 0.92)
                .ignoresSafeArea()
            ScrollView {
                VStack (spacing: 10.0){
                    Text("Greenable")
                        .font(.custom("LibreBaskerville-Bold", size: 55))
                        .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                    Text("TELL US ABOUT YOUR GREEN LEVEL")
                        .font(.custom("Poppins", size: 20))
                        .foregroundColor(Color.brown)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 18)
                    Text("1. On a scale of 1-4, how environmentally friendly are you? (1 is not at all and 4 is super-duper)")
                        .font(.custom("Source Sans Pro", size: 18))
                        .multilineTextAlignment(.leading)
                    HStack (spacing: 40.0) {
                        Button {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        } label: {
                            Text ("1")
                                .padding(.horizontal, 20)
                                .padding(.vertical, 9)
                                .font(.custom("Source Sans Pro", size: 29))
                                .foregroundColor(Color.white)
                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                .cornerRadius(50)
                        }
                        Button {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        } label: {
                            Text ("2")
                                .padding(.horizontal, 20)
                                .padding(.vertical, 9)
                                .font(.custom("Source Sans Pro", size: 29))
                                .foregroundColor(Color.white)
                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                .cornerRadius(50)
                        }
                        Button {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        } label: {
                            Text ("3")
                                .padding(.horizontal, 20)
                                .padding(.vertical, 9)
                                .font(.custom("Source Sans Pro", size: 29))
                                .foregroundColor(Color.white)
                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                .cornerRadius(50)
                        }
                        Button {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        } label: {
                            Text ("4")
                                .padding(.horizontal, 20)
                                .padding(.vertical, 9)
                                .font(.custom("Source Sans Pro", size: 29))
                                .foregroundColor(Color.white)
                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                .cornerRadius(50)
                        }
                    }
                    Text("2. Which task do you think would be the easiest for you to complete?")
                        .font(.custom("Source Sans Pro", size: 18))
                        .multilineTextAlignment(.leading)
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Where ever you go today, pick up 1+ piece of litter you see")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 23)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                    }
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Where ever you go today, pick up 5+ pieces of litter you see")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 21)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                }
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("In addition to where you're going today, walk or bike around your area and pick up 15+ pieces of litter")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 23)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                }
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Spend the day out in your area picking up all the litter you see! Then, bring them to your local compound for some cash")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 14)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                }
                    Text("3. Which task do you think would be the hardest for you to complete?")
                        .font(.custom("Source Sans Pro", size: 18))
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Be mindful of your water usage today!")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 38)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                    }
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Use less water than you did yesterday")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 40)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                }
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Don't let water run for more than a total of 15 minutes all day!")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 23)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                }
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Don't let water run for more than a total of 10 minutes all day!")
                            .font(.custom("Source Sans Pro", size: 17))
                            .padding(.horizontal, 13)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                            .cornerRadius(40)
                }
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    } label: {
                        Text ("Submit")
                            .font(.custom("Source Sans Pro", size: 25))
                            .font(.title)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.white)
                            .background(Color(red: 0.55, green: 0.42, blue: 0.32))
                            .cornerRadius(40)
                }
                    .padding(20)
                }
                .padding(22)
            }
        }
    }
}

#Preview {
    survey()
}
