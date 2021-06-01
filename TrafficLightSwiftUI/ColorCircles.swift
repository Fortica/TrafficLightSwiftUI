//
//  ColorCircles.swift
//  TrafficLightSwiftUI
//
//  Created by Larisa on 01.06.2021.
//

import SwiftUI

struct ColorCircles: View {
    var color: Color
    
    var body: some View {
        ZStack {
            Color(.black)
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
        }
    }
}

struct ColorCircles_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircles(color: .purple)
    }
}
