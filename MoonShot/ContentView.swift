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
        ScrollView{
            LazyVStack(spacing: 10){
                ForEach(0..<50){ ele in
                    CustomTextView(text: "My Text \(ele)")
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ContentView()
}
