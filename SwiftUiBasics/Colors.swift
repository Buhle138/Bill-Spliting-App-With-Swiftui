//
//  Colors.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/20.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        ZStack{
            Color.red //This color red is it's own modifier so we can add modifiers onto it like padding
                .frame(minWidth: 200, maxWidth: 300)
            Text("Your content")
        }
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
