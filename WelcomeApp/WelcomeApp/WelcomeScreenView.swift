//
//  WelcomeScreenView.swift
//  WelcomeApp
//
//  Created by Orkun Toptaş on 2.04.2022.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                        Color("BgColor").edgesIgnoringSafeArea(.all)
                        VStack {
                            Spacer()
                            Image("onboard")
                            Spacer()
                            PrimaryButton(title: "Get Started")
                            
                            NavigationLink {
                                SignInView()
                            } label: {
                                Text("Sign In")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(Color("PrimaryColor"))
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.white)
                                    .cornerRadius(50)
                                    .shadow(color: Color.black.opacity(0.2), radius: 30, x: 2, y: 2)
                                    .padding(.vertical)
                            }

                            
                            HStack{
                                Text("New around here")
                                Text("Sign in")
                                    .foregroundColor(Color("PrimaryColor"))
                            }
                        }
                        .padding()
            }
        }
            }
        }

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

struct PrimaryButton: View {
    var title : String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("PrimaryColor"))
            .foregroundColor(.white)
            .cornerRadius(50)
    }
}
