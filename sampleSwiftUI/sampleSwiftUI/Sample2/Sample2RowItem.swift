//
//  Sample2RowItem.swift
//  sampleSwiftUI
//
//  Created by tanphat.le on 13/03/2024.
//

import SwiftUI

struct Sample2RowItem: View {
    
    var data: Sample2Model
    let baseURLString = "https://picsum.photos/id/12/"
    
    @Environment(\.displayScale) var scale
    let size: CGFloat = 48
    var urlString: String {
        baseURLString + "\(Int(size * scale))"
    }
    
    var body: some View {
        HStack {
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
            
            VStack {
                HStack {
                    Text(data.real_name)
                        .lineLimit(0)
                    Spacer()
                }
                HStack {
                    Text(data.profile.title == "" ? data.profile.display_name : data.profile.title)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Sample2RowItem(data: sample2Data[9])
}
