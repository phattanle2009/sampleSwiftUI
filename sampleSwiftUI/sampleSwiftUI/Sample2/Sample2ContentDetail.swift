//
//  ContentDetail.swift
//  swiftUIApp
//
//  Created by tanphat.le on 11/03/2024.
//

import SwiftUI

struct Sample2ContentDetail: View {
    let size: CGFloat = 340
    var data: Sample2Model
    
    var body: some View {
        VStack {
//            Image(data.thumbnail)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 160, height: 160, alignment: .center)
//                .clipShape(.circle)
            if data.profile.image_original == nil {
                ZStack {
                    Color.purple
                        .ignoresSafeArea()
                }
                .frame(width: size, height: size)
                .cornerRadius(10)
            } else {
                AsyncImage(url: URL(string: data.profile.image_original ?? ""),
                           scale: 3) { phase in
                    switch phase {
                    case .empty:
                        ZStack {
                            Color.gray
                            ProgressView()
                        }
                    case .success(let image):
                        image.resizable()
                    case .failure(let error):
                        Text(error.localizedDescription)
                        // use placeholder for production app
                    @unknown default:
                        EmptyView()
                    }
                }
                           .frame(width: size, height: size)
                           .cornerRadius(10)
            }
            VStack(alignment: .center) {
                Text(data.real_name).font(.title).bold()
                Text(data.profile.title == "" ? data.profile.display_name : data.profile.title).font(.subheadline).italic()
            }
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 10))
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
    }
}

#Preview {
    Sample2ContentDetail(data: sample2Data[9])
}
