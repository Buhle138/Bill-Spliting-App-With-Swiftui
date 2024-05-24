//
//  CreatingViewInALoop.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/22.
//

//We use the dollar symbol for the on value change

import SwiftUI

struct CreatingViewInALoop: View {
    
    @State private var name = ""
    
    var body: some View {
        Form{
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
        
    }
}

struct CreatingViewInALoop_Previews: PreviewProvider {
    static var previews: some View {
        CreatingViewInALoop()
    }
}
