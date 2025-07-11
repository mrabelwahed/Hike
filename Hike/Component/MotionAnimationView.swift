//
//  MotionAnimationView.swift
//  Hike
//
//  Created by MahmoudRamadan on 12/07/2025.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    
    @State private var isAnimating = false
    
    func randomCoordinates() -> CGFloat {
        return CGFloat(Int.random(in: 0...256))
    }
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2))
    }
    
    func randomSpeed() -> CGFloat {
        return CGFloat(Double.random(in: 0.05...1.0))
    }
    
    func randomDelay() -> CGFloat {
        return CGFloat(Double.random(in: 0...2))
    }
    
    
            var body: some View {
                ZStack {
                    ForEach(0...randomCircle, id: \.self) { _ in
                        let size = randomSize()
                        let x = randomCoordinates()
                        let y = randomCoordinates()
                        let scale = randomScale()
                        
                        Circle()
                            .foregroundColor(.white)
                            .opacity(0.25)
                            .frame(width: size, height: size)
                            .position(x: x, y: y)
                            .scaleEffect(isAnimating ? scale : 1)
                            .animation(
                                Animation
                                    .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                                    .repeatForever(autoreverses: true)
                                    .speed(randomSpeed())
                                    .delay(randomDelay()),
                                value: isAnimating
                            )
                    }
                }
                .onAppear {
                    isAnimating = true
                }
            }
      
     
    }


#Preview {
   
        MotionAnimationView()
        .background(
            Circle()
                .fill(Color.teal)
        )
    
   
}
