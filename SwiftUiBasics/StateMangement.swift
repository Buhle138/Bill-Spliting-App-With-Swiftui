//
//  StateMangement.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/22.
//

import SwiftUI

struct StateMangement: View {
    @State var tapCount = 0
    
    var body: some View {
       
        Button("Tap Count: \(tapCount)"){
            tapCount += 1
        }
        
        CreatingViewInALoop()
    }
}

struct StateMangement_Previews: PreviewProvider {
    static var previews: some View {
        StateMangement()
    }
}
