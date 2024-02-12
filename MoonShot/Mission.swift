//
//  Mission.swift
//  MoonShot
//
//  Created by Jigmet stanzin Dadul on 12/02/24.
//

import Foundation

struct Mission: Codable, Identifiable{
    struct CrewRole: Codable{
        let name: String
        let role: String
    }
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
