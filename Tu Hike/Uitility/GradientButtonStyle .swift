//
//  GradientButtonStyle .swift
//  Tu Hike
//
//  Created by Ahmed El Gndy on 21/12/2024.
//

import Foundation
import SwiftUI

struct GradeintButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
         configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                //Contion ? A : B
                configuration.isPressed ?
                //A: when the user pressed the button
                LinearGradient(colors: [.CustomGrayLight ], startPoint: .top, endPoint: .bottom) 
                :
               //B: When the Button is not perssed
              LinearGradient(colors: [.CustomGrayLight , .CustomGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
            
    }
    
}
