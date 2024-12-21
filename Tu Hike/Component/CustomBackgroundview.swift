//
//  CustomBackgroundview.swift
//  Tu Hike
//
//  Created by Ahmed El Gndy on 21/12/2024.
//

import SwiftUI

struct CustomBackgroundview: View {
    var body: some View {
   
        ZStack {
            //MARk: Depth
            Color.CustomGreenDark
                .cornerRadius(40)
                .offset(y:12)
            //MARK: Light
            Color.CustomGreenLight
                .cornerRadius(40)
                .offset(y:5)
                .opacity(0.9)
            
            //MARK: Surface
            LinearGradient(
                colors: [.CustomGreenLight,
                         .CustomGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundview()
        .padding()
}
