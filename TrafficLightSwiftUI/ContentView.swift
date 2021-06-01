//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Larisa on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        Color(.black)
            .ignoresSafeArea()
        Text("Hello, world!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
