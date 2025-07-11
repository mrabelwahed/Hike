//
//  SettingsView.swift
//  Hike
//
//  Created by MahmoudRamadan on 12/07/2025.
//
import SwiftUI

struct SettingsView: View {
    var appIcons = [
        "AppIcon-Camera",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Backpack",
        "AppIcon-Magnify",
        "AppIcon-Campfire"
    ]
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 66, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 80, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 66, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark
                    ], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                VStack(spacing: 8) {
                    Text("Where can you find \n perfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actuall there. The hike that you hope to do again.\n Find the best days hike in the app")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots!. It's time for walk!")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                
            }.listRowSeparator(.hidden)
            
            Section (
                header:
                    Text("Choose App Icon")
                    .frame(minWidth: 0,maxWidth: .infinity)
            ){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 12) {
                        ForEach(appIcons.indices,id:\.self) {
                            item in
                            Button{
                                
                UIApplication.shared.setAlternateIconName(
                                    appIcons[item]) {
                                        error in
                                        if error != nil {
                                            print("failed to update app icon")
                                        }else {
                                            print("success update")
                                        }
                                    }
                                
                            }label: {
                                Image("\(appIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                            
                        }
                    }
                }
                
                Text("Choose your favorite app icons \n from the collection")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.bottom, 12)
            }.listRowSeparator(.hidden)
            
            Section (
                header: Text("About the App"),
                footer:
                    HStack {
                        Spacer()
                        Text("Copyright @ All rights reserved")
                        Spacer()
                    }
            ){
                CustomListItemVIew(
                    label: "Application",
                    value: "Hike",
                    icon: "apps.iphone",
                    tint: .blue
                )
                
                CustomListItemVIew(
                    label: "Compatablity",
                    value: "iOS,iPadOS",
                    icon: "info.circle",
                    tint: .red
                )
                
                CustomListItemVIew(
                    label: "Technology",
                    value: "Swift",
                    icon: "swift",
                    tint: .orange
                )
                
                CustomListItemVIew(
                    label: "Version",
                    value: "1.0",
                    icon: "gear",
                    tint: .purple
                )
                
                CustomListItemVIew(
                    label: "Developer",
                    value: "Mahmoud Ramadan",
                    icon: "ellipsis.curlybraces",
                    tint: .mint
                )
                
                CustomListItemVIew(
                    label: "Designer",
                    value: "Mahmoud Ramadan",
                    icon: "paintpalette",
                    tint: .pink
                )
                
                CustomListItemVIew(
                    label: "Website",
                    value: nil,
                    icon: "global",
                    tint: .indigo,
                    linkLabel: "Website",
                    linkValue: "https://x.com",
                )
            }
        }
        
     
        
    }
}

#Preview {
    SettingsView()
}
