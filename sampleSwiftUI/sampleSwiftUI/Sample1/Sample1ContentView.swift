//
//  Sample1ContentView.swift
//  sampleSwiftUI
//
//  Created by tanphat.le on 12/03/2024.
//

import SwiftUI

struct Sample1ContentView: View {
    var body: some View {
        NavigationView {
            List(listMocks) { it in
                NavigationLink(destination: {
                    ContentDetail(data: it)
                }, label: {
                    ContentRow(data: it)
                })
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Home")
        }
    }
}

#Preview {
    Sample1ContentView()
}
