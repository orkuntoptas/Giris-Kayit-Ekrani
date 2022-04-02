//
//  SignInView.swift
//  WelcomeApp
//
//  Created by Orkun Toptaş on 2.04.2022.
//

import SwiftUI

struct SignInView: View {
    @State private var email : String = ""
    var body: some View {
        VStack {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    VStack {
                        Text("Sign in")
                            .font(.largeTitle)
                            .bold()
                            .padding(.bottom,30)

                        SocalLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                        SocalLoginButton(image: Image("google"), text: Text("Sign in with google"))
                            .foregroundColor(Color("PrimaryColor"))
                        
                        Text("or get a link emailed to you")
                            .foregroundColor(.gray)
                        

                        
                        TextField(text: $email) {
                            Text("Work email address")
                                
                        }
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50)
                            .shadow(color: Color.black.opacity(0.2), radius: 30, x: 2, y: 2)
                            .padding(.vertical)

                        
                        PrimaryButton(title: "Email me  a sign up link")
                    }
                        Spacer()
                        Divider()
                        Spacer()

                        Text("You are Completely safe.")
                        Text("Read our Terms & Conditions")
                            .foregroundColor(Color("PrimaryColor"))
                }
            }.padding()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct SocalLoginButton: View {
    var image : Image
    var text : Text
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title3)
            Spacer()
        }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(50)
            .shadow(color: Color.black.opacity(0.2), radius: 30, x: 2, y: 2)
    }
}
