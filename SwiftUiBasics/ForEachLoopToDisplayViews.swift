//
//  ForEachLoopToDisplayViews.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/22.
//

import SwiftUI

struct ForEachLoopToDisplayViews: View {
    
    let students = ["Buhle", "Radzilani", "Bob"]
    @State private var selectedStudent = "Buhle"
    
//the id is a unique identifier so the unique identifier there is the
    //Array value itself so we use the 
    
    var body: some View {
        
        NavigationView{
            Form{
                Picker("Select your student", selection:$selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
            }
        }
        
    }
}

struct ForEachLoopToDisplayViews_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoopToDisplayViews()
    }
}
