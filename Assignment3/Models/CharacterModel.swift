//
//  CharacterModel.swift
//  Assignment3
//
//  Created by Amenda Kang on 3/30/24.
//

import Foundation

struct CharacterResults {
    let info : Info
    let results : [CharacterModel]
}

struct Info {
    let count : Int
    let pages : Int
    let next : String
    let prev : String
}

struct CharacterModel {
    let id : Int
    let name : String
    let status : String
    let species : String
    let gender : String
    let image : String
    let origin : LocationModel
    let location : LocationModel
    let episodes : [String]
}

struct LocationModel {
    let name : String
    let url : String
}
