//
//  CharacterModel.swift
//  Assignment3
//
//  Created by Amenda Kang on 3/30/24.
//

import Foundation

struct CharacterResults : Codable {
    let results : [CharacterModel]
}

struct CharacterModel : Codable, Identifiable {
    let id : Int
    let name : String
    let status : String
    let species : String
    let gender : String
    let type : String
    let image : String
}
