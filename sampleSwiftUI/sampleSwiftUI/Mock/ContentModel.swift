//
//  ContentModel.swift
//  swiftUIApp
//
//  Created by tanphat.le on 11/03/2024.
//

import SwiftUI

let listMocks: [ContentModel] = [ContentModel(id: 0, name: "Zlatan Ibrahimovic", desc: "Zlatan Ibrahimović was born 3 October 1981, he is a Swedish former professional footballer who played as a striker.", thumbnail: "ibra"),
                                 ContentModel(id: 1, name: "Karim Benzema", desc: "Karim Mostafa Benzema was born 19 December 1987", thumbnail: "benzema"),
                                 ContentModel(id: 2, name: "Mohamed Salah", desc: "Mohamed Salah Hamed Mahrous Ghaly was born born 15 June 1992", thumbnail: "salah"),
                                 ContentModel(id: 3, name: "Petr Cech", desc: "Petr Cech was born 20 May 1982. He is a Czech former professional footballer who played as a goalkeeper and current ice hockey player who plays as a goaltender for Belfast Giants, on loan from Oxford City Stars", thumbnail: "petr_cech"),]

struct ContentModel: Identifiable {
    
    var id: Int
    var name: String
    var desc: String
    var thumbnail: String
}
