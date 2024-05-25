//
//  Hike.swift
//  Hiking
//
//  Created by Mohammad Azam on 9/25/23.
//

import Foundation

struct Hike: Identifiable {
    let id = UUID() 
    let name: String
    let photo: String
    let miles: Double
}
