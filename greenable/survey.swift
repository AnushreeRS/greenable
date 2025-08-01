////
////  survey.swift
////  greenable
////
////  Created by Anushree RS on 7/29/25.
////

import SwiftUI
struct survey: View {
    @State private var score = 0
    @State private var selectedDestination: Int? = nil
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.97, green: 0.96, blue: 0.92)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 10) {
                        // Title
                        Text("Greenable")
                            .font(.custom("LibreBaskerville-Bold", size: 55))
                            .foregroundColor(Color(red: 0.255, green: 0.53, blue: 0.35))
                        Text("TELL US ABOUT YOUR GREEN LEVEL")
                            .font(.custom("Poppins", size: 20))
                            .foregroundColor(.brown)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 18)
                        // Question 1
                        Text("1. On a scale of 1-4, how environmentally friendly do you think you are?")
                            .font(.custom("Source Sans Pro", size: 18))
                            .multilineTextAlignment(.leading)
                        HStack(spacing: 40) {
                            ForEach(1...4, id: \.self) { value in
                                Button {
                                    score += value
                                } label: {
                                    Text("\(value)")
                                        .font(.custom("Source Sans Pro", size: 29))
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 9)
                                        .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                        .cornerRadius(50)
                                }
                            }
                        }
                        // Question 2
                        Text("2. Which task do you think would be the   easiest for you to complete?")
                            .font(.custom("Source Sans Pro", size: 18))
                            .multilineTextAlignment(.leading)
                        Group {
                            Button { score += 1 } label: {
                                Text ("Where ever you go today, pick up 1+ piece of litter you see")
                                              .font(.custom("Source Sans Pro", size: 17))
                                              .padding(.horizontal, 4)
                                              .padding(.vertical, 5)
                                              .foregroundColor(Color.white)
                                              .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                              .cornerRadius(40)
                            }
                            Button { score += 2 } label: {
                                Text ("Where ever you go today, pick up 5+ pieces of litter you see")
                                             .font(.custom("Source Sans Pro", size: 17))
                                             .padding(.horizontal, 3)
                                             .padding(.vertical, 5)
                                             .foregroundColor(Color.white)
                                             .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                             .cornerRadius(40)
                            }
                            Button { score += 3 } label: {
                                Text ("In addition to where you're going today, walk or bike around your area and pick up 15+ pieces of litter")
                                                .font(.custom("Source Sans Pro", size: 17))
                                                .padding(.horizontal, 8)
                                                .padding(.vertical, 5)
                                                .foregroundColor(Color.white)
                                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                                .cornerRadius(40)
                            }
                            Button { score += 4 } label: {
                                Text ("Spend the day out in your area picking up all the litter you see! Then, bring them to your local compound for some cash")
                                                .font(.custom("Source Sans Pro", size: 17))
                                                .padding(.horizontal, 8)
                                                .padding(.vertical, 5)
                                                .foregroundColor(Color.white)
                                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                                .cornerRadius(40)
                            }
                        }
                        .buttonStyle(SurveyButtonStyle())
                        // Question 3
                        Text("3. Which task do you think would be the hardest for you to complete?")
                            .font(.custom("Source Sans Pro", size: 18))
                        Group {
                            Button { score += 1 } label: {
                                Text ("Be mindful of your water usage today!")
                                                .font(.custom("Source Sans Pro", size: 17))
                                                .padding(.horizontal, 20)
                                                .padding(.vertical, 5)
                                                .foregroundColor(Color.white)
                                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                                .cornerRadius(40)
                            }
                            Button { score += 2 } label: {
                                Text ("Use less water than you did yesterday!")
                                               .font(.custom("Source Sans Pro", size: 17))
                                               .padding(.horizontal, 22)
                                               .padding(.vertical, 5)
                                               .foregroundColor(Color.white)
                                               .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                               .cornerRadius(40)
                            }
                            Button { score += 3 } label: {
                                Text ("Don't let water run for more than a total of 15 minutes all day!")
                                                .font(.custom("Source Sans Pro", size: 17))
                                                .padding(.horizontal, 8)
                                                .padding(.vertical, 5)
                                                .foregroundColor(Color.white)
                                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                                .cornerRadius(40)
                            }
                            Button { score += 4 } label: {
                                Text ("Don't let water run for more than a total of 10 minutes all day!")
                                                .font(.custom("Source Sans Pro", size: 17))
                                                .padding(.horizontal, 6)
                                                .padding(.vertical, 5)
                                                .foregroundColor(Color.white)
                                                .background(Color(red: 0.255, green: 0.53, blue: 0.35))
                                                .cornerRadius(40)
                            }
                        }
                        .buttonStyle(SurveyButtonStyle())
                        // Submit Button
                        Button {
                            if score <= 4 {
                                selectedDestination = 1
                                level = "seed"
                            } else if score <= 6 {
                                selectedDestination = 2
                                level = "sprout"
                            } else if score <= 11 {
                                selectedDestination = 3
                                level = "sapling"
                            } else {
                                selectedDestination = 4
                                level = "tree"
                            }
                            print(score)
                            score = 0
                        } label: {
                            Text("Submit")
                                .font(.custom("Source Sans Pro", size: 25))
                                .padding(.horizontal, 15)
                                .padding(.vertical, 5)
                                .foregroundColor(.white)
                                .background(Color(red: 0.55, green: 0.42, blue: 0.32))
                                .cornerRadius(40)
                        }
                       
                        .padding(20)
                        // NavigationLinks (based on score → view)
                        NavigationLink(destination: u_r_seed(), tag: 1, selection: $selectedDestination) { EmptyView() }
                        NavigationLink(destination: u_r_sprout(), tag: 2, selection: $selectedDestination) { EmptyView() }
                        NavigationLink(destination: u_r_sapling(), tag: 3, selection: $selectedDestination) { EmptyView() }
                        NavigationLink(destination: u_r_tree(), tag: 4, selection: $selectedDestination) { EmptyView() }
                    }
                    .padding(22)
                }
                
            }
            .navigationTitle("Survey")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    
    }
        
}
    
// Button Style
struct SurveyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Source Sans Pro", size: 17))
            .padding(.horizontal, 20)
            .padding(.vertical, 5)
            .foregroundColor(.white)
            .background(Color(red: 0.255, green: 0.53, blue: 0.35))
            .cornerRadius(40)
            .opacity(configuration.isPressed ? 0.7 : 1)
    }
        
}
// Preview
#Preview {
    survey()
}
