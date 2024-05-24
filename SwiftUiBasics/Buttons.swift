//
//  Buttons.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/23.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack{
            Button("Button 1"){}
                .buttonStyle(.bordered)
            Button("Button 2"){}
                .buttonStyle(.borderedProminent)
            Button("Button 3"){}
            Button("Button 4"){}
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
