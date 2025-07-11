//
//  ContentView.swift
//  Hike
//
//  Created by MahmoudRamadan on 11/07/2025.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ZStack {
            CustomBackgroundView()
            CardView()
                .padding()
        }
       
        .frame(width: 320, height: 570)
    }
}

#Preview {
    ContentView()
}
