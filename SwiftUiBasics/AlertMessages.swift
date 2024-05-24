//
//  AlertMessages.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/23.
//

import SwiftUI

struct AlertMessages: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert"){
            showingAlert = true
        }
        .alert("important message", isPresented: $showingAlert){
            Button("Delete", role: .destructive){}
            Button("Cancel", role: .cancel){}
        }
    }
}

struct AlertMessages_Previews: PreviewProvider {
    static var previews: some View {
        AlertMessages()
    }
}
