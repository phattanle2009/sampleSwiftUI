//
//  Sample2Model.swift
//  sampleSwiftUI
//
//  Created by tanphat.le on 12/03/2024.
//

import SwiftUI

struct Sample2Model: Hashable, Codable, Identifiable {
    
    var id: String
    var real_name: String
    var profile: Sample2ProfileModel
}

struct Sample2ProfileModel: Hashable, Codable {
    
    var title: String
    var display_name: String
    var image_original: String?
}
