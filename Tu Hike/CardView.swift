//
//  CardView.swift
//  Tu Hike
//
//  Created by Ahmed El Gndy on 21/12/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors:
                            [Color("ColorIndigoMedium")
                            ,Color("ColorSalmonLight")],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 259 , height: 265)
            Image("image-1")
            .resizable()
            .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
