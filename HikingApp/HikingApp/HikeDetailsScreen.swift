//
//  HikeDetailsScreen.swift
//  HikingApp
//
//  Created by Buhle Radzilani on 2024/05/26.
//

import SwiftUI

struct HikeDetailsScreen: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack{
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                    
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct HikeDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            HikeDetailsScreen(hike:   Hike(name: "Tamanawas Falls", photo: "tam", miles: 6))
        }
       
    }
}
