//
//  Sample2ContentView.swift
//  sampleSwiftUI
//
//  Created by tanphat.le on 13/03/2024.
//

import SwiftUI

struct Sample2ContentView: View {
    
    var body: some View {
        TabView {
            Sample2HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Sample2ComparationView()
                .tabItem {
                    Label("Comparation", systemImage: "checkmark.seal")
                }
        }
    }
}

#Preview {
    Sample2ContentView()
}
