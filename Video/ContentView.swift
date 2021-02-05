//
//  ContentView.swift
//  Video
//
//  Created by Tung Lam Chan on 4/2/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Button("Invoke C") {
                printHello()
                ffmpegTest()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
