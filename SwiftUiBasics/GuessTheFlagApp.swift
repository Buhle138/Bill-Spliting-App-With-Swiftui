//
//  GuessTheFlagApp.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/23.
//

import SwiftUI

struct GuessTheFlagApp: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "Uk", "US"]
    var correctAnswer = Int.random(in: 0...2)
    var body: some View {
      
        ZStack{
            Color.blue
                .ignoresSafeArea()
            VStack(spacing: 30){
                VStack{
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                
                ForEach(0..<3){number in
                    Button{
                        
                    }label: {
                        Image(countries[number])
                            .renderingMode(.original)
                    }
                }
            }
        }
        
       
        
    }
}

struct GuessTheFlagApp_Previews: PreviewProvider {
    static var previews: some View {
        GuessTheFlagApp()
    }
}
