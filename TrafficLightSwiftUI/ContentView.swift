//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Larisa on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    @State private var redColor = Color(.red).opacity(0.3)
    @State private var yellowColor = Color(.yellow).opacity(0.3)
    @State private var greenColor = Color(.green).opacity(0.3)
    
    @State var start = "START"
    
    var body: some View {
        ZStack {
        Color(.black)
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
            ColorCircle(color: redColor)
            ColorCircle(color: yellowColor)
            ColorCircle(color: greenColor)
                
                Spacer()
                
                Button(action: {buttonPressed()}) {
                Text(start)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 180, height: 60)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
            )
                    .background(Color.blue)
                    .cornerRadius(20)
        }
            }
            .padding()
        }
    }
    
    enum CurrentLight {
        case red, yellow, green
    }
    
     func buttonPressed() {
        start = "NEXT"
        
        switch currentLight {
        
        case .red:
            redColor = Color(.red).opacity(lightIsOn)
            greenColor = Color(.green).opacity(lightIsOff)
            currentLight = .yellow
        case .yellow:
            yellowColor = Color(.yellow).opacity(lightIsOn)
            redColor = Color(.red).opacity(lightIsOff)
            currentLight = .green
        case .green:
            greenColor = Color(.green).opacity(lightIsOn)
            yellowColor = Color(.yellow).opacity(lightIsOff)
            currentLight = .red
        }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
