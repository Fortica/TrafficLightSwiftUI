//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Larisa on 01.06.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    // значения по умолчанию ждя цветов светофора
    @State private var redColor = 0.3
    @State private var yellowColor = 0.3
    @State private var greenColor = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func buttonPressed() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            redColor = lightIsOn
            greenColor = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowColor = lightIsOn
            redColor = lightIsOff
            currentLight = .green
        case .green:
            greenColor = lightIsOn
            yellowColor = lightIsOff
            currentLight = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                ColorCircle(color: .red, opacity: redColor)
                ColorCircle(color: .yellow, opacity: yellowColor)
                ColorCircle(color: .green, opacity: greenColor)
                
                Spacer()
                
                ColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    buttonPressed()
                }
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
