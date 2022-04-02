//
//  ContentView.swift
//  WelcomeApp
//
//  Created by Orkun Toptaş on 2.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            WelcomeScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
