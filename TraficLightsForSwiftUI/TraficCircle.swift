//
//  TraficCircle.swift
//  TraficLightsForSwiftUI
//
//  Created by Роман on 17.07.2023.
//

import SwiftUI

struct TraficCircle: View {
    
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .padding()
            .foregroundColor(color)
            .shadow(radius: 20)
            .brightness(alpha)
    }
}

struct TraficCircle_Previews: PreviewProvider {
    static var previews: some View {
        TraficCircle(color: .green, alpha: 0
        )
    }
}
