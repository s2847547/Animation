//
//  ContentView.swift
//  Animation
//
//  Created by Corey Burgos on 10/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false

    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .animation(nil, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.9), value: enabled)
    }
}

#Preview {
    ContentView()
}
