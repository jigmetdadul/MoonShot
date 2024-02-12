//
//  Bundle-decode.swift
//  MoonShot
//
//  Created by Jigmet stanzin Dadul on 10/02/24.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String)->T{
        guard let url = self.url(forResource: file, withExtension: nil) else
        {
            fatalError("The Url for the file \(file) not found")
        }
        
        guard let data = try? Data(contentsOf: url) else
        {
            fatalError("Error while trying to get data from the url: \(url)")
        }
        let decoder = JSONDecoder()
        guard let decoded = try? decoder.decode(T.self, from: data) else{
            fatalError("Error while trying to decode \(data)")
        }
        return decoded
    }
}
