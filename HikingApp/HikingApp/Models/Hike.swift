//
//  Hike.swift
//  HikingApp
//
//  Created by Buhle Radzilani on 2024/05/25.
//

import Foundation


struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
