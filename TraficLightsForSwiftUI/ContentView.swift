//
//  ContentView.swift
//  TraficLightsForSwiftUI
//
//  Created by Роман on 17.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var redAlpha: Double = 0.5
    @State private var yellowAlpha: Double = 0.5
    @State private var greenAlpha: Double = 0.5
    
    
    var body: some View {
        VStack{
            VStack {
                TraficCircle(color: .green, alpha: redAlpha)
                TraficCircle(color: .yellow, alpha: yellowAlpha)
                TraficCircle(color: .red, alpha: greenAlpha)
            }
            
            Button(action: {
                switchColor()
               
            } ) {
                Text("Start")
                      .font(.title)
              }
            .padding()
        }
    
    
}
    private func switchColor(){
        switch currentLight {
        case .red:
            redAlpha = 0
            yellowAlpha = 0.5
            greenAlpha = 0.5
            currentLight = .yellow
        case .yellow:
            redAlpha = 0.5
            yellowAlpha = 0
            greenAlpha = 0.5
            currentLight = .green
        case .green:
            redAlpha = 0.5
            yellowAlpha = 0.5
            greenAlpha = 0
            currentLight = .red
        }
    }
    
    
    private enum CurrentLight {
        case red, yellow, green
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
