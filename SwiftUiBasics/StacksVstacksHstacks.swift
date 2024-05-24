//
//  StacksVstacksHstacks.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/23.
//

import SwiftUI

struct StacksVstacksHstacks: View {
    var body: some View {
        VStack{
            HStack{
                Text("Buhle")
                Text("Buhle")
                Text("Buhle")
            }
            HStack{
                Text("Buhle")
                Text("Buhle")
                Text("Buhle")
            }
            HStack{
                Text("Buhle")
                Text("Buhle")
                Text("Buhle")
            }
            }
    }
}

struct StacksVstacksHstacks_Previews: PreviewProvider {
    static var previews: some View {
        StacksVstacksHstacks()
    }
}
