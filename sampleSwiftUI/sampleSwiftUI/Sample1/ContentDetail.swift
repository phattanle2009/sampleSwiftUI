//
//  ContentDetail.swift
//  swiftUIApp
//
//  Created by tanphat.le on 11/03/2024.
//

import SwiftUI

struct ContentDetail: View {
    
    var data: ContentModel
    
    var body: some View {
        VStack {
            Image(data.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 160, alignment: .center)
                .clipShape(.circle)
            VStack(alignment: .center) {
                Text(data.name).font(.title).bold()
                Text(data.desc).font(.subheadline).italic()
            }
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 10))
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
    }
}

#Preview {
    ContentDetail(data: ContentModel(id: 0, name: "Zlatan Ibrahimovic", desc: "aaaa", thumbnail: "ibra"))
}
