//
//  ContentRow.swift
//  swiftUIApp
//
//  Created by tanphat.le on 11/03/2024.
//

import SwiftUI

struct ContentRow: View {
    
    var data: ContentModel
    
    var body: some View {
        HStack {
            Image(data.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(.circle)
            VStack(alignment: .leading) {
                Text(data.name).font(.title3).bold()
                Text(data.desc)
                    .font(.callout)
                    .italic()
                    .lineLimit(2)
            }
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 10))
            Spacer()
        }
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10))
    }
}

#Preview {
    ContentRow(data: ContentModel(id: 0, name: "Zlatan Ibrahimovic", desc: "aaaa", thumbnail: "ibra"))
}
