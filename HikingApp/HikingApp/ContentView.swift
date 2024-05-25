//
//  ContentView.swift
//  HikingApp
//
//  Created by Buhle Radzilani on 2024/05/25.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
    Hike(name: "Elliot", photo: "Sal", miles: 6),
    Hike(name: "Buhle", photo: "tom", miles: 5.8),
    Hike(name: "Tamanawas Falls", photo: "tam", miles: 6)
    
    ]
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
