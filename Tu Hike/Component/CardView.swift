//
//  CardView.swift
//  Tu Hike
//
//  Created by Ahmed El Gndy on 21/12/2024.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIEs
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSeet: Bool = false
    
    //MARK: - FUNCTIONS
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)

        }while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    var body: some View {
        ZStack {
            CustomBackgroundview()
            VStack{
                //MARK: HEADER
                VStack(alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.CustomGrayLight ,
                                                        .CustomGreenDark],
                                               startPoint: .top,
                                               endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                        //ACtion: Show A sheet
                            isShowingSeet.toggle()
                        } label: {
                           CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSeet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium , .large])
                            //.medium will shows 50% , large 100%
                        }
                    }
                    Text("Fun and enjoyable outdoor activity For Friends and Families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.CustomGrayMedium)
                }//: HEADER
                .padding(.horizontal,30)
                
                //MARK: Main Content
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                    .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumber)
                }
                //MARK: - Footer
                Button {
                    randomImage()
                }
                label : {
                    Text("Explore More")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.CustomGreenLight , .CustomGreenLight], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.35 , x: 1 , y: 2)
                        
                }.buttonStyle(GradeintButton())
                
            }
           
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
