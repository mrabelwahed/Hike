//
//  CustomCircleView.swift
//  Hike
//
//  Created by MahmoudRamadan on 12/07/2025.
//

import SwiftUI

struct CustomCircleView: View {
    @State var isAnimated = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        .customIndigoMedium,
                        .customSalamonColor
                    ],
                                   startPoint: isAnimated ? .topLeading: .bottomLeading,
                                   endPoint: isAnimated ? .bottomTrailing: .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                        isAnimated.toggle()
                    }
                }
            MotionAnimationView()
               
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
       
    }
}

#Preview {
    CustomCircleView()
}
