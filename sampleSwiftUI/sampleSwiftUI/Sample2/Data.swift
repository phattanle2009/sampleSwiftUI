//
//  Data.swift
//  sampleSwiftUI
//
//  Created by tanphat.le on 13/03/2024.
//

import Foundation

let sample2Data: [Sample2Model] = load("ekino_new.json")

func load<T:Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else { fatalError("Couldn't find \(filename) in main Bundle") }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) in main Bundle with error:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self) with error:\n\(error)")
    }
}
