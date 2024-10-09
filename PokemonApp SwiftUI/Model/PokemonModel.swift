//
//  Model.swift
//  PokemonApp SwiftUI
//
//  Created by mac on 9/12/24.
//

import Foundation

struct Pokemon: Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let weight: Int
    let height: Int
    let attack: Int
    let defense: Int
    let description: String
    
}


//github.com/onevcat/Kingfisher
