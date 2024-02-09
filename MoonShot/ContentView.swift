//
//  ContentView.swift
//  MoonShot
//
//  Created by Jigmet stanzin Dadul on 08/02/24.
//

import SwiftUI

struct CustomTextView: View {
    var text: String
    var body: some View {
        Text(text)
    }
    init(text: String) {
        print("Custom View creating \(text)")
        self.text = text
    }
}
struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100){ row in
                NavigationLink("Row \(row)"){
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
