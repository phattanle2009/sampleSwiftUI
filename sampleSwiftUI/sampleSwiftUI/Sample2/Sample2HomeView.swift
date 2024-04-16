//
//  Sample2HomeView.swift
//  sampleSwiftUI
//
//  Created by tanphat.le on 15/04/2024.
//

import SwiftUI

struct Sample2HomeView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List(searchResults) { it in
                NavigationLink(destination: {
                    
                }, label: {
                    Sample2RowItem(data: it)
                })
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Home")
            .searchable(text: $searchText)
        }
    }
    
    var searchResults: [Sample2Model] {
        if searchText.isEmpty {
            return sample2Data
        } else {
            return sample2Data.filter { $0.real_name.lowercased().contains(searchText.lowercased()) }
        }
    }
}

#Preview {
    Sample2HomeView()
}
