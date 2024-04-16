//
//  Sample2ComparationView.swift
//  sampleSwiftUI
//
//  Created by tanphat.le on 15/04/2024.
//

import SwiftUI

struct Sample2ComparationView: View {
    
    let oldData = sample2Data
    let newData: [Sample2Model] = load("ekino_new.json")
    
    var body: some View {
        VStack {
            let a = calculator()
            List(a.deactiveUser) { it in
                Section(header: Text("Deactive account")) {
                    NavigationLink(destination: {
                        Sample2ContentDetail(data: it)
                    }, label: {
                        Sample2RowItem(data: it)
                    })
                }
            }.background(Color.gray)
            
            List(a.newCommer) { it in
                Section(header: Text("New commer account")) {
                    NavigationLink(destination: {
                        Sample2ContentDetail(data: it)
                    }, label: {
                        Sample2RowItem(data: it)
                    })
                }
            }.background(Color.gray)
        }
    }
    
    private func calculator() -> (newCommer: [Sample2Model], deactiveUser: [Sample2Model]) {
        let newCommer = newData.filter { !oldData.contains($0) }
        let deactiveUser = oldData.filter { !newData.contains($0) }
        return (newCommer, deactiveUser)
    }
}

#Preview {
    Sample2ComparationView()
}
