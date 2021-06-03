//
//  ColorCircles.swift
//  TrafficLightSwiftUI
//
//  Created by Larisa on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    var color: Color
    
    var body: some View {
        VStack {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            
        
        }
    }
}

struct ColorCircles_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .purple)
    }
}
