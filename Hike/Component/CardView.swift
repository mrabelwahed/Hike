//
//  CardView.swift
//  Hike
//
//  Created by MahmoudRamadan on 12/07/2025.
//

import SwiftUI

struct CardView: View {
    @State var randomNumber: Int = 1
    @State var randomImage: Int  = 1
    @State var isSheetShown: Bool = false
    
    func generateRandomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        }while(randomImage == randomNumber)
        
        randomImage = randomNumber
    }
    
    var body: some View {
        
    
        VStack {
            HeaderView(isBtnClicked: $isSheetShown)
        
                .padding(.horizontal)
            ZStack {
                
               CustomCircleView()
                
                VStack {
                    Image("image-\(randomImage)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: randomImage)
                }
                .padding()
            }
            Button {
                print("explore btn cliked ...")
                generateRandomImage()
            }label: {
                Text("Explore More")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(
                        LinearGradient(colors: [
                            .customGreenLight,
                            .customGreenMedium
                        ], startPoint: .top, endPoint: .bottom)
                    )
                    .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2
                            )
                
                
            }
            .buttonStyle(GradientButton())
            .sheet(isPresented: $isSheetShown) {
                SettingsView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium,.large])
            }
           
        }
    }
}

#Preview {
    CardView()
}
