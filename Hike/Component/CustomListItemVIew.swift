//
//  CustomListItemVIew.swift
//  Hike
//
//  Created by MahmoudRamadan on 12/07/2025.
//
import SwiftUI

struct CustomListItemVIew: View {
    @State var label: String
    @State var value: String? = nil
    @State var icon: String
    @State var tint: Color
    @State var linkLabel: String? = nil
    @State var linkValue: String? = nil
    
    var body: some View {
        
        LabeledContent {
            if value != nil {
                Text(value!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if (linkLabel != nil && linkValue != nil) {
                Link(linkLabel!,destination: URL(string: linkValue!)!)
                    .foregroundColor(.pink)
    
            }else {
                EmptyView()
            }
          
            
        }label: {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(tint)
                            .frame(width: 30, height: 30)
                        Image(systemName: icon)
                            .foregroundColor(.white)
                    }
                   
                    Text(label)
                    
                }
            }
        }
    }



#Preview {
    List{
        CustomListItemVIew(
            label: "Application",
            value: "Hike",
            icon: "apps.iphone", tint: .blue
        )
    }
   
}
