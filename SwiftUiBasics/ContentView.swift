//
//  ContentView.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/19.
//

//foregroundColor is the actual color of the text
//you can only have 10 ui children inside of a swift ui element not more if you want more use a group

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Hello World")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
