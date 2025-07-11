//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by MahmoudRamadan on 12/07/2025.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        
    
       
        ZStack {
            
            Color.customGreenDark
            .cornerRadius(40)
            .offset(y: 12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.83)
            
            LinearGradient(colors: [
                .customGreenLight,
                .customGrayMedium
            ], startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
