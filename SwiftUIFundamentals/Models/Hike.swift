//
//  Hike.swift
//  SwiftUIFundamentals
//
//  Created by Lara Santos on 27/03/2024.
//

import Foundation

struct Hike: Identifiable, Hashable {   //it needs to make sure the elements have an uniqueness to it - giving an identity to UI elements
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
