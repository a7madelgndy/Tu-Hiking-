//
//  CustomCircleView.swift
//  Tu Hike
//
//  Created by Ahmed El Gndy on 21/12/2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            
            Circle()
                .fill(
                    LinearGradient(
                        colors:
                            [.CustomIndigoMedium
                             ,.CustomSalmonLight],
                        startPoint: isAnimateGradient ? .topLeading : .bottom,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing)
                ).onAppear{
                     withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                         isAnimateGradient.toggle()
                    }
                }
            MotionAnimationView()
        }//: ZSTACK
        .frame(width: 256 , height: 256)

    }
}

#Preview {
    CustomCircleView()
}
