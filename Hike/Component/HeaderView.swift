//
//  HeaderView.swift
//  Hike
//
//  Created by MahmoudRamadan on 12/07/2025.
//

import SwiftUI

struct HeaderView: View {
     @Binding var  isBtnClicked: Bool
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("Hiking")
                    .fontWeight(.black)
                    .font(.system(size: 52))
                    .foregroundStyle(
                        LinearGradient(colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ],
                                       startPoint: .top,
                                       endPoint: .bottom
                        )
                    )
                
                Text("Fun and enjoyable outdoor activity for friends and family")
                    .multilineTextAlignment(.leading)
                    .italic()
            }
            Spacer()
            Button {
                print("view is clicked....")
                isBtnClicked.toggle()
            }label: {
                CustomButton()
            }
    
        }
    }
}

#Preview {
    HeaderView(isBtnClicked: .constant(true))
}
