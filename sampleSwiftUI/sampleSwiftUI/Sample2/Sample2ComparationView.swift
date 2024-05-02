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
            Text("Deactive account")
            List(a.deactiveUser) { it in
                NavigationLink(destination: {
                    let _ = print("ahihi")
                    Sample2ContentDetail(data: it)
                }, label: {
                    Sample2RowItem(data: it)
                })
            }
            
            Text("New commer account")
            List(a.newCommer) { it in
                NavigationLink(destination: {
                    Sample2ContentDetail(data: it)
                }, label: {
                    Sample2RowItem(data: it)
                })
            }
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
