//
//  CusomtListRowView.swift
//  Tu Hike
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import SwiftUI

struct CustomListRowView: View {
    //MARK: - PROPERTIES
    @State var rowContent: String
    @State var rowTintColor: Color
    @State var rowIcon: String
    @State var rowLabel:String? = nil
    @State var rowlinkLabel :String? = nil
    @State var rowLinkDestination: String? = nil
    var body: some View {
        LabeledContent {
            if rowLabel != nil {
                Text(rowLabel!)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            }else if(rowlinkLabel != nil &&
                     rowLinkDestination != nil) {
                Link(rowlinkLabel! , destination: URL(string: rowLinkDestination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label : {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30 , height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName:rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowContent)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowContent: "Webside", rowTintColor: .pink, rowIcon: "globe", rowLabel: nil, rowlinkLabel: "Linkedin",
                          rowLinkDestination: "https://www.linkedin.com/in/ahmadelgndy/"
        )
    }
}
