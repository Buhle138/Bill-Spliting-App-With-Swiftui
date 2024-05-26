//
//  ContentView.swift
//  HikingApp
//
//  Created by Buhle Radzilani on 2024/05/25.
//

//For you to be able to navigate you must use a navigation stack.

import SwiftUI

struct ContentView: View {
    
    let hikes = [
    Hike(name: "Elliot", photo: "Sal", miles: 6),
    Hike(name: "Buhle", photo: "tom", miles: 5.8),
    Hike(name: "Tamanawas Falls", photo: "tam", miles: 6)
    ]
    
    var body: some View{
        
        NavigationStack{
            List(hikes){hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike) //This is a label for the navigation link. label is what must appear on the screen.
                }
            }.navigationTitle("Hikes")
            //Hike.self means that we are navigating to the object itself.
                .navigationDestination(for: Hike.self) { hike in
                    Text(hike.name)
                }
        }
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top){
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                .frame(width: 100)
            VStack(alignment: .leading){
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
            
        }
    }
}
