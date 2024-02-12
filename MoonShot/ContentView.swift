//
//  ContentView.swift
//  MoonShot
//
//  Created by Jigmet stanzin Dadul on 08/02/24.
//

import SwiftUI


struct ContentView: View {
    let astronauts: [String: Astronauts] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        
        Text(String(astronauts.count))
        Text(String(missions.count))
    }
}

#Preview {
    ContentView()
}
