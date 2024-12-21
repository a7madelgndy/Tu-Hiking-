//
//  SettingsView.swift
//  Tu Hike
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    private let alternateAppIcons : [String] = [
    "AppIcon-MagnifyingGlass",
    "AppIcon-Map",
    "AppIcon-Mushroom",
    "AppIcon-Camera",
    "AppIcon-Backpack",
    "AppIcon-Campfire"
    ]
    var body: some View {
        List {
            //MARK: -SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80 , weight: .black))
                    VStack(spacing: -11){
                        Text("Hike")
                            .font(.system(size: 66 , weight:.black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80 , weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [.CustomGreenLight ,
                                 .CustomGreenMedium ,
                                 .CustomGreenDark],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .padding(.top, 8)
                VStack(spacing: 8){
                    Text("Where can you Find\nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actully there. the hike that you hope to do again someday . \nfind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the Boots , it's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom ,16)
                .frame(maxWidth:.infinity)
            }//: HEADER
            .listRowSeparator(.hidden)
            //MARK: -SECTION: ICONS
            Section(header:Text("Alternate Icon")) {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 12){
                        ForEach(alternateAppIcons.indices , id:\.self) { item in
                            Button {
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]){
                                    error in
                                    if error != nil {
                                        print(error?.localizedDescription ?? "erro")
                                    }else {
                                        print("Success!! you have a new icon")
                                    }
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80)
                                    .cornerRadius(18)
                        }.buttonStyle(.borderless)
                        }
                    }
                }//: Scoll View
                .padding(.top , 12)
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0 , maxWidth: .infinity)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(.bottom , 12)
            }//: Section
            .listRowSeparator(.hidden)
            //MARK: -SECTION: ABOUt
            Section(
                header: Text("ABOUT THE APP"),
                footer : HStack {
                    Spacer()
                    Text("Copyright © are reserved.")
                }
            ){
                CustomListRowView(rowContent: "Application", rowTintColor: .blue, rowIcon: "apps.iphone", rowLabel: "TU Hike")
                
                CustomListRowView(rowContent: "Compatibility", rowTintColor: .red, rowIcon: "info.circle", rowLabel: "ios, ipados")
                
                CustomListRowView(rowContent: "Technology", rowTintColor: .orange, rowIcon: "swift", rowLabel: "swift")
                
                CustomListRowView(rowContent: "Version", rowTintColor: .purple, rowIcon: "gear", rowLabel: "1.0")
                
                CustomListRowView(rowContent: "Developer", rowTintColor: .mint, rowIcon: "ellipsis.curlybraces", rowLabel: "Ahmad El Gndy")
            
                CustomListRowView(rowContent: "Designer", rowTintColor: .pink, rowIcon: "paintpalette", rowLabel: "Robert Petras   ") 
                
                CustomListRowView(rowContent: "Webside", rowTintColor: .pink, rowIcon: "globe", rowLabel: nil, rowlinkLabel: "Linkedin",
                                  rowLinkDestination: "https://www.linkedin.com/in/ahmadelgndy/"
                )
         

            }
        }
    }
}

#Preview {
    SettingsView()
}
